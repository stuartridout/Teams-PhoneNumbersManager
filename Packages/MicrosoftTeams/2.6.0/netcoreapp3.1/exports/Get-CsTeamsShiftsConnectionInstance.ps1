
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Connector instances marked for deletion are excluded.
.Description
Connector instances marked for deletion are excluded.
.Example
PS C:\> Get-CsTeamsShiftsConnectionInstance | Format-List

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : ae319a6b-f0a7-491e-9bc1-3415bf8a1621
EnabledConnectorScenario                 : {Shift, TimeOffRequest}
EnabledWfiScenario                       : {Shift}
Etag                                     : "0000715c-0000-0700-0000-60b94c0f0000"
Id                                       : WCI-3f37d48a-95aa-45e3-99be-86d99c5f1ace
Name                                     : Maosha Connector instance1
SyncFrequencyInMin                       : 60
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8562677a-996c-4f21-9935-723ba12a8d64

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : b862c9A7-416A-43aA-4Eac-db0C56eCDddC
EnabledConnectorScenario                 : {SwapRequest, OpenShiftRequest}
EnabledWfiScenario                       : {}
Etag                                     : "30013a2e-0000-0700-0000-60b4d1940000"
Id                                       : WCI-c4b4266e-769a-4403-a87d-563d26d3c7d9
Name                                     : Leo s Connector Instance
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 0c1141fa-1b17-43cc-a417-34c156b99779
EnabledConnectorScenario                 : {Shift, SwapRequest, UserShiftPreferences, OpenShift...}
EnabledWfiScenario                       : {Shift, SwapRequest, UserShiftPreferences, OpenShift...}
Etag                                     : "0000ce4b-0000-0700-0000-60b905b20000"
Id                                       : WCI-54d3d260-f171-4106-8f1d-3247a5b43486
Name                                     : Guchuan instantance3
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 0c1141fa-1b17-43cc-a417-34c156b99779
EnabledConnectorScenario                 : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
EnabledWfiScenario                       : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
Etag                                     : "0000605c-0000-0700-0000-60b94af20000"
Id                                       : WCI-85e864f2-3a75-43fa-ac3e-6ef571a3e5d9
Name                                     : Guchuan instance5
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 0c1141fa-1b17-43cc-a417-34c156b99779
EnabledConnectorScenario                 : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
EnabledWfiScenario                       : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
Etag                                     : "00009f5e-0000-0700-0000-60b951c10000"
Id                                       : WCI-d1addd70-2684-4723-b8f2-7fa2230648c9
Name                                     : Guchuan instance6
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 910ba867-3349-4bff-bc9f-6460ae8c9761
EnabledConnectorScenario                 : {Shift, OpenShift, TimeOff}
EnabledWfiScenario                       : {Shift, OpenShift, TimeOff}
Etag                                     : "0000a085-0000-0700-0000-60ba2cb50000"
Id                                       : WCI-6e4bd9f6-5617-4012-82eb-6dd51bf30bfa
Name                                     : Nialls Test Connector Instance
SyncFrequencyInMin                       : 180
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 656c81a0-21cf-461c-ac83-07d0023bd62b
EnabledConnectorScenario                 : {Shift, SwapRequest, UserShiftPreferences, OpenShift...}
EnabledWfiScenario                       : {SwapRequest, OpenShift, OpenShiftRequest, OfferShiftRequest...}
Etag                                     : "0e00d46a-0000-0700-0000-60babcca0000"
Id                                       : WCI-2302814d-f316-4d80-91cc-11508c24d51c
Name                                     : Sushruth Instance
SyncFrequencyInMin                       : 20
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectorInstanceResponse
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IConfigApiBasedCmdletsIdentity>: Identity Parameter
  [AppId <String>]: 
  [AudioFileId <String>]: 
  [Bssid <String>]: 
  [ChassisId <String>]: 
  [CivicAddressId <String>]: 
  [ConnectorInstanceId <String>]: Connector Instance Id
  [Country <String>]: 
  [EndpointId <String>]: Application instance Id.
  [GroupId <String>]: The ID of a group whose policy assignments will be returned.
  [Id <String>]: 
  [Identity <String>]: 
  [Locale <String>]: 
  [LocationId <String>]: Location id.
  [OdataId <String>]: A composite URI of a template.
  [OperationId <String>]: The ID of a batch policy assignment operation.
  [OrderId <String>]: 
  [PackageName <String>]: The name of a specific policy package
  [PolicyType <String>]: The policy type for which group policy assignments will be returned.
  [PortId <String>]: 
  [PublicTemplateLocale <String>]: Language and country code for localization of publicly available templates.
  [SubnetId <String>]: 
  [TeamId <String>]: Team Id
  [UserId <String>]: UserId. Supports Guid. Eventually UPN and SIP.
  [Version <String>]: 
  [WfmTeamId <String>]: Team Id
.Link
https://docs.microsoft.com/en-us/powershell/module/teams/get-csteamsshiftsconnectioninstance
#>
function Get-CsTeamsShiftsConnectionInstance {
[OutputType([Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectorInstanceResponse])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [System.String]
    # Connector Instance Id
    ${ConnectorInstanceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Path')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Get-CsTeamsShiftsConnectionInstance_Get';
            Get1 = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Get-CsTeamsShiftsConnectionInstance_Get1';
            GetViaIdentity = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\Get-CsTeamsShiftsConnectionInstance_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# SIG # Begin signature block
# MIIjiAYJKoZIhvcNAQcCoIIjeTCCI3UCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAo64iGuGfZ59MN
# /zpWZJekH5uJlcAdwqj8A7PaafW3pqCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
# n7IWKxDmAAAAAAIZMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjEwNDI5MTkxMjU1WhcNMjIwNDI4MTkxMjU1WjByMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMRwwGgYDVQQDExNTa3lw
# ZSBTb2Z0d2FyZSBTYXJsMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
# nxMscK0w8ebaayvQhxPtLTkomfivSX4yNLmQJGXG+1yUKU4fmdQAhZm5mSIdFAEv
# sjAwCP3vUmh2N5R5TrAN/whfjGcDDlCYonKcrmuSaXxGuyjXKlELlRmPOaobqeo1
# 1Amcz6SRbNYBtKtRiP5ip2PfAvtJp7AvH0mZfGXKehE4C+5t8XYZ3K1JU3Tdb+3Z
# z+smovI8h/ZPe+uV2ORTxxa9kBLDvueJZbzKkn/WAIX/8rq/ywHtffSTXSueUmoe
# NJ0UCyoNBr90xtnozaCVknyRG8qWzHEZlc43FPNwIW6y8k1JSuspq+SML/HP7Fjv
# 7zcTLtM1HBBX/I9KxBJSBQIDAQABo4IBcjCCAW4wEwYDVR0lBAwwCgYIKwYBBQUH
# AwMwHQYDVR0OBBYEFAZqNYGuvWVnCVhV5aJBAvx4cJdwMFAGA1UdEQRJMEekRTBD
# MSkwJwYDVQQLEyBNaWNyb3NvZnQgT3BlcmF0aW9ucyBQdWVydG8gUmljbzEWMBQG
# A1UEBRMNMjMwMjU0KzQ2NDU2MjAfBgNVHSMEGDAWgBRIbmTlUAXTgqoXNzcitW2o
# ynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3JsMGEGCCsG
# AQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3J0MAwG
# A1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIBABRKE3yDcJHa8xnyFn9Z+0m8
# vQLeUGC9933o78aSOWDkvcPFPczSqvw4cUmQnHPcRwDS1mwlYs5TmCdIS6Ij++Or
# uWxfgMdPRpveO6zT8rDWBL2sqCT/k5yCO75DVhT4kE/qEe81T4OY/Ejx3lZbBE1a
# z2k5dOL/ZWqNu8FdKSDmBZEeENOYy9UIyLf6coV2KLERB2IZ3W8U3z37fPA5nRMw
# +9sWWb98Gdm8exr4UwmnU0q8Y0KvJx/xwqOPShgiDjHsWev3fzsKSYzebkfBdLbw
# DZl9880mrGr03CfEWGDWa0tJui3LRh4csIuxWHkUrFw/R2N8baMDGPEUCh7dE+qf
# nuuMJ5tRUmnMOqyqj8dLXUZa+yxxpS91qde5asle0+WfzjLQ1D+T6ElhLBQU9LNh
# 5nhbD1+kJkVHFAU2tM3MXa2tgMVWFWQP4IqcQDWMW68M90VkGUrJ+t63oRO8HwbL
# 4IZJxG0wW/527ypSQTmpLSX6mM2vIyFHsO4zCvjDq8yfnDk25bpUNJbfOpqVkkWP
# UE+4bNIQbzcWgKgPIZDOka3pxq4vI05ns3tnvWS7TKiG+7ZYr5ZBSS6pr1Wykt0U
# aXxaUZuAWwikj2gvZAXR35f5bDg+36WoJTpQKNqzsY7dyL6SxkcZI8DcEKWEfbWd
# BX8q+w5hzEWqh7TrYJ93MIIHejCCBWKgAwIBAgIKYQ6Q0gAAAAAAAzANBgkqhkiG
# 9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAO
# BgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEy
# MDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIw
# MTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEwOTA5WjB+MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQgQ29k
# ZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKC
# AgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+laUKq4BjgaBEm6f8MMHt03a8YS
# 2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc6Whe0t+bU7IKLMOv2akrrnoJ
# r9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4Ddato88tt8zpcoRb0RrrgOGSs
# bmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+lD3v++MrWhAfTVYoonpy4BI6
# t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nkkDstrjNYxbc+/jLTswM9sbKv
# kjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6A4aN91/w0FK/jJSHvMAhdCVf
# GCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmdX4jiJV3TIUs+UsS1Vz8kA/DR
# elsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL5zmhD+kjSbwYuER8ReTBw3J6
# 4HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zdsGbiwZeBe+3W7UvnSSmnEyim
# p31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3T8HhhUSJxAlMxdSlQy90lfdu
# +HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS4NaIjAsCAwEAAaOCAe0wggHp
# MBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRIbmTlUAXTgqoXNzcitW2oynUC
# lTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0T
# AQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBDuRQFTuHqp8cx0SOJNDBaBgNV
# HR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9w
# cm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3JsMF4GCCsGAQUF
# BwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3Br
# aS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3J0MIGfBgNVHSAE
# gZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5t
# aWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1hcnljcHMuaHRtMEAGCCsGAQUF
# BwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkAYwB5AF8AcwB0AGEAdABlAG0A
# ZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn8oalmOBUeRou09h0ZyKbC5YR
# 4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7v0epo/Np22O/IjWll11lhJB9
# i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0bpdS1HXeUOeLpZMlEPXh6I/MT
# faaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/KmtYSWMfCWluWpiW5IP0wI/z
# Rive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvyCInWH8MyGOLwxS3OW560STkK
# xgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBpmLJZiWhub6e3dMNABQamASoo
# PoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJihsMdYzaXht/a8/jyFqGaJ+HN
# pZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYbBL7fQccOKO7eZS/sl/ahXJbY
# ANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbSoqKfenoi+kiVH6v7RyOA9Z74
# v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sLgOppO6/8MO0ETI7f33VtY5E9
# 0Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtXcVZOSEXAQsmbdlsKgEhr/Xmf
# wb1tbWrJUnMTDXpQzTGCFWswghVnAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEILSQh9zdqjp4AVNxqVzwdY3PKfkZ
# E2CEu5OEvyjxnQpYMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAJLhfRkN
# 4ZIdu4jZYBuN9T/H2DCsKCAvWl0uxF43UaaKLo+7/CdXHmNOi2TbWZmvlhSk+ilj
# OV/oqXy0WtJ5C3SUsN1HZv36HuxR/e6JVq98j/fSTkL/0WEp0CUPIYg/HBgK5pfp
# aB0SCqfkAYe1GC4YEnfgHUeNcmc6S1Vv86rmGr/Ko26kfUDTgKZRG9DXlKK2hmar
# YudTQnNtR+oc8wk44V8YEkz0pT7scFJrElWEcFu09UNg5IKuW7y+zrgQZE7iCmfn
# Ju0K0enQDOkFhVPNzL3UFF34vMhAxYDLOdw0q51EZqkw0MSntfbv7LpOz2zIBssA
# 4Em9cKJvWLWkwAyhghL9MIIS+QYKKwYBBAGCNwMDATGCEukwghLlBgkqhkiG9w0B
# BwKgghLWMIIS0gIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBWAYLKoZIhvcNAQkQAQSg
# ggFHBIIBQzCCAT8CAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgyMen
# DCl3vpJHWDqs7g6VDzTP0ITPwaKYFVkH+H1QJSYCBmFIrgQLxRgSMjAyMTA5MzAx
# NjMzMDQuNjRaMASAAgH0oIHYpIHVMIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRp
# b25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkZDNDEtNEJENC1E
# MjIwMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIOTTCC
# BPkwggPhoAMCAQICEzMAAAFAIxnWXt6VJDEAAAAAAUAwDQYJKoZIhvcNAQELBQAw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcNMjAxMDE1MTcyODI2WhcN
# MjIwMTEyMTcyODI2WjCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1p
# dGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpGQzQxLTRCRDQtRDIyMDElMCMG
# A1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCCASIwDQYJKoZIhvcN
# AQEBBQADggEPADCCAQoCggEBAK59azNx6tUvTdM/EfmCqmbtucpJOTpU/E7LsLXQ
# VsgwkRaAEpPXwerIgqJRYVwYcno+HN8iMDdFMiVgTkwIx7XjiGI3wqced/a24ASO
# fwUx7QvqnAU+37T5J07UJ/PZTTnKT+9H7mFWS6ELA5y4xscbVv3lXsEeUNCNZlkH
# ycucTn3pZOTlo892FeByrasiEcyWXf0c3GPMOqps6EjbGCHb5Yk9nnkGW8mE3SUL
# EaMyCkzCwiVAX1Y6MNnyTA7cwwfVxDnX4T1s71DmnWIKqodJbJQEezVfdBRZmYGV
# gEaxvI+2Z1ZwuTDlzkvzSOfEuPMnLLoNKTdjRiy5NmFo8QsCAwEAAaOCARswggEX
# MB0GA1UdDgQWBBQ1QxwuJndGII6M0qp1bPjnhC0OZzAfBgNVHSMEGDAWgBTVYzpc
# ijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1p
# Y3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNUaW1TdGFQQ0FfMjAxMC0w
# Ny0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAx
# LmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3
# DQEBCwUAA4IBAQBjDFKtoELggvcK+GISEnz8qG2jWFdzr+GMFrEnyM/49cWjfU7y
# wAdgcT4tgrUW4GwVH+PJ9O8kXmSJ8Ltq/L8C6DRtk7WM3stNQ0co47DaIhxfVLkS
# xcimQoZCgt6Pa9DstsdGGI1KQ8VQoWeauXAH8PPOMD9IlHGJyihp/HidJ8Ka+86/
# 05bvhzo1w0/Qu+eGkuClBTZvA+4sLr1ls0jlZe1zFnbvNgZ505ge7NjnH9yOGnRs
# 3YsUOWccWt8zgLys61ftB3FUCGN0kCfT84w0Zcwr4jE4cQPBVCES9xZ2Kr3IVpBK
# GeMPEuxbBljZVy1kO3xzG95eII7nh8juKerVMIIGcTCCBFmgAwIBAgIKYQmBKgAA
# AAAAAjANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUg
# QXV0aG9yaXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAxMjE0NjU1WjB8
# MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVk
# bW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1N
# aWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZIhvcNAQEBBQAD
# ggEPADCCAQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0VBDVpQoAgoX77XxoSyxf
# xcPlYcJ2tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEwRA/xYIiEVEMM1024OAiz
# Qt2TrNZzMFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+BVLHPk0ySwcSm
# XdFhE24oxhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3wV3WsvYpCTUBR
# 0Q+cBj5nf/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4GkbaICDXoeByw6ZnNPOcv
# RLqn9NxkvaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEAAaOCAeYwggHiMBAGCSsG
# AQQBgjcVAQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7fEYbxTNoWoVtVTAZBgkr
# BgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUw
# AwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBN
# MEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0
# cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoG
# CCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01p
# Y1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0gAQH/BIGVMIGSMIGPBgkr
# BgEEAYI3LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93d3cubWljcm9zb2Z0LmNv
# bS9QS0kvZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABl
# AGcAYQBsAF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJ
# KoZIhvcNAQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOhIW+z66bM9TG+zwXiqf76
# V20ZMLPCxWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS+7lTjMz0YBKKdsxAQEGb
# 3FwX/1z5Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlKkVIArzgPF/UveYFl2am1
# a+THzvbKegBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon/VWvL/625Y4zu2JfmttX
# QOnxzplmkIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOiPPp/fZZqkHimbdLhnPkd
# /DjYlPTGpQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96LjlXdqJxqgaK
# D4kWumGnEcua2A5HmoDF0M2n0O99g/DhO3EJ3110mCIIYdqwUB5vvfHhAN/nMQek
# kzr3ZUd46PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiFAR6A+xuJKlQ5
# slvayA1VmXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7aKLixqduWsqdCosnPGUFN
# 4Ib5KpqjEWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQcdeh0sVV42neV8HR3jDA
# /czmTfsNv11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+NR4Iuto229Nfj950iEkS
# oYIC1zCCAkACAQEwggEAoYHYpIHVMIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRp
# b25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkZDNDEtNEJENC1E
# MjIwMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEw
# BwYFKw4DAhoDFQBCpeYe8hOmOzKX5jKRG0M5CXJRU6CBgzCBgKR+MHwxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29m
# dCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA5QBbGjAiGA8y
# MDIxMDkzMDIzNDk0NloYDzIwMjExMDAxMjM0OTQ2WjB3MD0GCisGAQQBhFkKBAEx
# LzAtMAoCBQDlAFsaAgEAMAoCAQACAicZAgH/MAcCAQACAhGqMAoCBQDlAayaAgEA
# MDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAI
# AgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEALAdxEbuQUwIggnL2cgavcf3dcCQY
# KonZkfcYtQrrCLECYuo6pbcmw88zOzuXgokRgefR1Ych8+qI3f8rWltyL+6uxC02
# u+KK1oBy0CdFOW+TzVGL3NmHWt8qrRXxZX2GQDCoikNqAxxIDlCU3Xrm11w3UA/R
# UbDhfINjGr0edeUxggMNMIIDCQIBATCBkzB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAAUAjGdZe3pUkMQAAAAABQDANBglghkgBZQMEAgEFAKCCAUow
# GgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEiBCDJV3fU
# o+V3qotCootRPA0eKh6KtUYkAW8WMdPaf5+L/jCB+gYLKoZIhvcNAQkQAi8xgeow
# gecwgeQwgb0EIC82sLXqzNKkXCTv83LyU+3aP8nKfEWbEUk6qrYCCJeDMIGYMIGA
# pH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UE
# AxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAFAIxnWXt6VJDEA
# AAAAAUAwIgQgJwuJ5bhOSyGTpfisXuxG9Sp7Y7vwitiQtcp/R4zwQlAwDQYJKoZI
# hvcNAQELBQAEggEAX0sF4NXBJcTXidPSvem2u+xuXDcE3eHoIrBV2MRadelLsd+Q
# 8XZa6sAFPNokFAqbTLq8hApl+s76Y2uJUNCvRsKzmnKYWo21XCHlf1m5LHRZVQW6
# FdligUFoah9g5lBsz1K7yiwPm+XTRwCnMrC7M2wv7jR/L/bbNNhfLlWYjBMQxe8N
# CFvMmveCfX+k2h2rug21cQITKgTRbHLn+R5q7vkillU6B+bwAPcNCJVpAkt0Niet
# WX9+VP34wPCOqw6Yi381WQ1i6uAA3TKLTg19d6eE7qS0CSXdepd/12sm2SA4SgBd
# oFNctwclSJ1nUOa+F+02LGbeNASXKQcn79tGIg==
# SIG # End signature block
