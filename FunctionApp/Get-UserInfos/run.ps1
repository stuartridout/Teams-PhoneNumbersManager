using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Initialize PS script
$StatusCode = [HttpStatusCode]::OK
$Resp = ConvertTo-Json @()

# Get query parameters to search user profile info - REQUIRED parameter
$SearchString = $Request.Query.SearchString
If ([string]::IsNullOrWhiteSpace($SearchString)){
    $Resp = @{ "Error" = "Missing query parameter - Please provide UPN via query string ?objectId=" }
    $StatusCode =  [HttpStatusCode]::BadRequest
}

# Authenticate to AzureAD and MicrosofTeams using service account
$Account = $env:AdminAccountLogin 
$PWord = ConvertTo-SecureString -String $env:AdminAccountPassword -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Account, $PWord

Import-Module MicrosoftTeams
Import-Module AzureAD -UseWindowsPowerShell

If ($StatusCode -eq [HttpStatusCode]::OK) {
    Try {
        Connect-MicrosoftTeams -Credential $Credential -ErrorAction:Stop
        Connect-AzureAD -Credential $Credential -ErrorAction:Stop
    }
    Catch {
        $Resp = @{ "Error" = $_.Exception.Message }
        $StatusCode =  [HttpStatusCode]::BadGateway
        Write-Error $_
    }
}

# Get User profile infos
If ($StatusCode -eq [HttpStatusCode]::OK) {
    Try {
        # Get user general infos from Teams Communication Services
        $userInfos = Get-CsOnlineUser $SearchString -ErrorAction:Stop | Select-Object -Property objectID,DisplayName,UserPrincipalName,UsageLocation,LineURI,EnterpriseVoiceEnabled,HostedVoiceMail,VoicePolicy,TeamsCallingPolicy,OnlineDialOutPolicy
        Write-Host "User profile info collected."
        # Get user assigned licenced for PSTN calling from AzureAD
        $CallingPlan = Get-AzureADUserLicenseDetail -ObjectId $userInfos.objectID | Where-Object { $_.SkuPartNumber -like "MCOPSTN*"} | Select-Object SkuPartNumber
        Write-Host "User calling plan sku collected."
        if (-not([string]::IsNullOrWhiteSpace($CallingPlan))) {
            $userInfos | Add-Member -MemberType NoteProperty -Name 'Calling Plan' -Value $CallingPlan.SkuPartNumber 
        } else {
            $userInfos | Add-Member -MemberType NoteProperty -Name 'Calling Plan' -Value $null 
        }
        ##################################################################################################################################
        # Get user defined Emergency Location - Code commented for futur use (manage users Emergency Location)
        ##################################################################################################################################
        # $EmergencyLocation = Get-CsOnlineVoiceUser -Identity $SearchString -ExpandLocation | Select-Object Location
        # Write-Host "User emergency location collected."
        # if (-not([string]::IsNullOrWhiteSpace($EmergencyLocation))) {
        #     $userInfos | Add-Member -MemberType NoteProperty -Name 'Location Id' -Value $EmergencyLocation.location.locationId.Guid 
        # } else {
        #     $userInfos | Add-Member -MemberType NoteProperty -Name 'Location Id' -Value $null 
        # }
        ##################################################################################################################################
        $Resp = $userInfos | ConvertTo-Json
    }
    Catch {
        $Resp = @{ "Error" = $_.Exception.Message }
        $StatusCode =  [HttpStatusCode]::BadGateway
        Write-Error $_
    }
}

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = $StatusCode
    ContentType = 'application/json'
    Body = $Resp
})

Disconnect-AzureAD
Disconnect-MicrosoftTeams
Get-PSSession | Remove-PSSession

# Trap all other exceptions that may occur at runtime and EXIT Azure Function
Trap {
    Write-Error $_.Exception.Message
    break
}
