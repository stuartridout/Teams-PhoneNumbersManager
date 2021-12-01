
# ----------------------------------------------------------------------------------
# Code generated by Microsoft (R) AutoRest Code Generator (autorest: 3.5.1, generator: @autorest/powershell@3.0.466)
# Changes may cause incorrect behavior and will be lost if the code is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create call queue.
POST Teams.VoiceApps/callqueues.
.Description
Create call queue.
POST Teams.VoiceApps/callqueues.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueRequest
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueResponse
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AGENT <IAgent[]>: Gets or sets the Call Queue's agents list.
  [ObjectId <String>]: 
  [OptIn <Boolean?>]: 

BODY <ICreateCallQueueRequest>: CallQueue creation request DTO class.
  [Agent <IAgent[]>]: Gets or sets the Call Queue's agents list.
    [ObjectId <String>]: 
    [OptIn <Boolean?>]: 
  [AgentAlertTime <Int32?>]: Gets or sets the number of seconds that a call can remain unanswered.
  [AllowOptOut <Boolean?>]: Gets or sets a value indicating whether to allow agent optout on CallQueue.
  [ConferenceMode <Boolean?>]: Gets or sets a value indicating whether to allow Conference Mode on CallQueue.
  [DistributionList <String[]>]: Gets or sets the Call Queue's Distribution Lists.
  [EnableOverflowSharedVoicemailTranscription <Boolean?>]: Gets or sets a value indicating if transcription should be turned on or not.
  [EnableResourceAccountsForObo <Boolean?>]: Gets or sets a value indicating whether to allow CQ+Chanined RA's as permissioned RA's.
  [EnableTimeoutSharedVoicemailTranscription <Boolean?>]: Gets or sets a value indicating if transcription should be turned on or not.
  [LanguageId <String>]: Gets or sets the language Id used for TTS.
  [MusicOnHoldAudioFileId <String>]: Gets or sets music on hold audio file id.
  [Name <String>]: Gets or sets The Call Queue's name.
  [OverflowAction <Int32?>]: Gets or sets the action to take when the overflow threshold is reached.
  [OverflowActionTarget <String>]: Gets or sets the target of the overflow action.
  [OverflowSharedVoicemailAudioFilePrompt <String>]: Gets or sets the audio file to be played when forwarding callers to shared voicemai.
  [OverflowSharedVoicemailTextToSpeechPrompt <String>]: Gets or sets the TTS to be played when forwarding callers to shared voicemail.
  [OverflowThreshold <Int32?>]: Gets or sets the number of simultaneous calls that can be in the queue at any one time.
  [PresenceAwareRouting <Boolean?>]: Gets or sets a value indicating whether to enable presence aware routing.
  [RoutingMethod <Int32?>]: Gets or sets the routing method for the  Call Queue.
  [ShouldOverwriteCallableChannelProperty <Boolean?>]: Gets or sets ShouldOverwriteCallableChannelProperty flag that indicates user intention to whether overwirte the current callableChannel property value on chat service or not.
  [ThreadId <String>]: Gets or sets teams channel thread id if user choose to sync CQ with a channel.
  [TimeoutAction <Int32?>]: Gets or sets the action to take if the timeout threshold is reached.
  [TimeoutActionTarget <String>]: Gets or sets the target of the timeout action.
  [TimeoutSharedVoicemailAudioFilePrompt <String>]: Gets or sets the audio file to be played when forwarding callers to shared voicemai.
  [TimeoutSharedVoicemailTextToSpeechPrompt <String>]: Gets or sets the TTS to be played when forwarding callers to shared voicemail.
  [TimeoutThreshold <Int32?>]: Gets or sets the number of minutes that a call can be in the queue before it times out.
  [UseDefaultMusicOnHold <Boolean?>]: Gets or sets a value indicating whether to use default music on hold audio file.
  [User <String[]>]: Gets or sets the Call Queue's Users.
  [WelcomeMusicAudioFileId <String>]: Gets or sets welcome music audio file id.
.Link
https://docs.microsoft.com/en-us/powershell/module/teams/new-cscallqueue
#>
function New-CsCallQueue {
[OutputType([Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueResponse])]
[CmdletBinding(DefaultParameterSetName='NewExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='New', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueRequest]
    # CallQueue creation request DTO class.
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='NewExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IAgent[]]
    # Gets or sets the Call Queue's agents list.
    # To construct, see NOTES section for AGENT properties and create a hash table.
    ${Agent},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the number of seconds that a call can remain unanswered.
    ${AgentAlertTime},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to allow agent optout on CallQueue.
    ${AllowOptOut},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to allow Conference Mode on CallQueue.
    ${ConferenceMode},

    [Parameter(ParameterSetName='NewExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # Gets or sets the Call Queue's Distribution Lists.
    ${DistributionList},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating if transcription should be turned on or not.
    ${EnableOverflowSharedVoicemailTranscription},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to allow CQ+Chanined RA's as permissioned RA's.
    ${EnableResourceAccountsForObo},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating if transcription should be turned on or not.
    ${EnableTimeoutSharedVoicemailTranscription},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the language Id used for TTS.
    ${LanguageId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets music on hold audio file id.
    ${MusicOnHoldAudioFileId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets The Call Queue's name.
    ${Name},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the action to take when the overflow threshold is reached.
    ${OverflowAction},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the target of the overflow action.
    ${OverflowActionTarget},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the audio file to be played when forwarding callers to shared voicemai.
    ${OverflowSharedVoicemailAudioFilePrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the TTS to be played when forwarding callers to shared voicemail.
    ${OverflowSharedVoicemailTextToSpeechPrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the number of simultaneous calls that can be in the queue at any one time.
    ${OverflowThreshold},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to enable presence aware routing.
    ${PresenceAwareRouting},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the routing method for the Call Queue.
    ${RoutingMethod},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets ShouldOverwriteCallableChannelProperty flag that indicates user intention to whether overwirte the current callableChannel property value on chat service or not.
    ${ShouldOverwriteCallableChannelProperty},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets teams channel thread id if user choose to sync CQ with a channel.
    ${ThreadId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the action to take if the timeout threshold is reached.
    ${TimeoutAction},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the target of the timeout action.
    ${TimeoutActionTarget},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the audio file to be played when forwarding callers to shared voicemai.
    ${TimeoutSharedVoicemailAudioFilePrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the TTS to be played when forwarding callers to shared voicemail.
    ${TimeoutSharedVoicemailTextToSpeechPrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the number of minutes that a call can be in the queue before it times out.
    ${TimeoutThreshold},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to use default music on hold audio file.
    ${UseDefaultMusicOnHold},

    [Parameter(ParameterSetName='NewExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # Gets or sets the Call Queue's Users.
    ${User},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets welcome music audio file id.
    ${WelcomeMusicAudioFileId},

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
            New = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsCallQueue_New';
            NewExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsCallQueue_NewExpanded';
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
# MIInpAYJKoZIhvcNAQcCoIInlTCCJ5ECAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC8+vhqITkO4WvY
# jl0aIXva5/BF3t6Wzhj0VQ6RHBIExqCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
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
# wb1tbWrJUnMTDXpQzTGCGYcwghmDAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEILaktRJcsGtlIpKv3g78uvBvPh1d
# L9VJrn1RjT5h4f05MDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBACNnI+C8
# V4nPPYJe0PUkgv8YKOKicB37jP2RX7yQ8kqAO9+rfpyvdvsH7Rjb6JLEkTMGtIJ4
# A0SYV/NBSmhVeKxJGvf/c36Hvs4jcdab0RiLQfIoso+8qNkC+UdsKWfjcjV33luS
# H5QOF2jPnoL5YVvh/mAMjIlKKV1kJObNHwnk6Q2P54ulPLfCT68q7OWDkRjTaEHR
# xFb8qPRGQNiUsG4oBH1SkVH0POTBI2+79QkJaTupyR2CjY8N1gJv1XiViYeTcZc4
# ofMwXElj1t1h6o1NfcOGnwalRJfGL7n9BzCwpjgXFR1d31q0LfI2JVB7IBw04mZX
# v7t7KY+lJFmj2WehghcZMIIXFQYKKwYBBAGCNwMDATGCFwUwghcBBgkqhkiG9w0B
# BwKgghbyMIIW7gIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBWQYLKoZIhvcNAQkQAQSg
# ggFIBIIBRDCCAUACAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgATNM
# 4TlUyq/SrQWujOHPypRAzH9sSc7kvwes2ZdDKY8CBmGVXaQxKBgTMjAyMTExMzAw
# NjQ5MzEuODgxWjAEgAIB9KCB2KSB1TCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0
# aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoyQUQ0LTRCOTIt
# RkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaCCEWgw
# ggcUMIIE/KADAgECAhMzAAABhnjlGYn4JEvMAAEAAAGGMA0GCSqGSIb3DQEBCwUA
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTIxMTAyODE5MjczOVoX
# DTIzMDEyNjE5MjczOVowgdIxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGlt
# aXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046MkFENC00QjkyLUZBMDExJTAj
# BgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0GCSqGSIb3
# DQEBAQUAA4ICDwAwggIKAoICAQDAjcbZam/oHgiMB+uB8mmd0849g7Vh3z6+V+gj
# ExbeB0INP7Mhtp+DXik67S3R6RRDHrSns9p0fg6Oeo0gTWrqV0f2e2PWAh2Xgeri
# t0QdNnokV0TbgNJtWiqpH5HgjDjDcY9t9zZDeR/LIXKP4M6GYJbD8VmJNVOVPht1
# 6PIBbqv8mfh+vfEuNu+EhNq2vfpXLLOBDRjhavvcfeBRwuNi7SqIe60MNvr6n7IM
# EaYoXOc5bzBW3sP67ZUQmgTomUrQSlUtm6x1LOF5y5TAlfFva7KABleWxr98eXBb
# 1ieUGowcn6Kb0e4rlfjHz/kHl2S4ihfmVYaMUxsPYDou78+ZQHiErQIXkbVhpS0G
# swTvcMAqTKmTtISbcGUlfBj8atWhdZhQYQfJ+uQuTCzRGgQymggSB5tk0qqNHKdE
# mBHh88IqsSHASJNMBzgNcZyLgcc6brgRDWD9IMcwWogpVLGhRuQZt0o0oeGZqG4i
# sDLjB72zutkmyS95lhmIOa0C0G3+BCiPFtnW870LXVK2GSuaSRMwtB/1wPOVUQF6
# 7oqYdfZLN7qCCd7cjhzL/khQucdneszhmklzSzYqkYsdpWsRDLjH+YCfjJph+B4f
# cwQBaRWPL+pMOHpwMIX+DLPdNpAO28WcArvQuq1sS8E90Gl4Ib+GT2XSVpjPCLLI
# Zj8eowIDAQABo4IBNjCCATIwHQYDVR0OBBYEFBm2o0UD72Z0S7+HfdSEcw3rCFwu
# MB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRYMFYwVKBS
# oFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY3Jvc29m
# dCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEFBQcBAQRg
# MF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMv
# Y2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3J0
# MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQEL
# BQADggIBAMPuZ6Eljd9McoLiGP7AFYHznji5omIwwgeeEr041MztWtpNjPHRT9Nw
# snqDHDW1HMzm67ySzAk2Uc2ntF52wCLC+JVBlX0AvwhtlEslPA16ELCT4FVxjaCH
# dkZmbHy5q09mtG57KGFNMPY+8VUut/CHaWIMb90Q80gdMqPv0OURw8hag4JSnunQ
# 5EzBD3mRVqJulfz2m+OE+XYWbQIE7eldcmDRvJ2lDl0MNO/+pvT5ZgX+81URT8yg
# wRCqVRZa5cQJOrHpNrIm4snq5TsrlDJORD+XbgiEaMPN/kARk6sg1jORZXI19Q6k
# jGcqxZME3aKOln9O6fmquaj280gNPSWhuCe6Vp7Xs1oQ72iIQkkfW1Dfnd2G5GL4
# DTQ9HvzWJiXMXklTUOsR8TI3HwJaARGL3QsqxiCFkEIONDcOImN9Rkuo414esl9y
# aHPn9t+bz5oBpQ+lkV4/SDQiid3pc2ThiJhtY8Wih9zQvBypIAu24gDLPp/d35Rp
# lmynjVTiEIigaPqGgMi5Tzf1uj+Zn8CARLAbEhezSBlToD7aohR7rRB0D3r3BZLO
# 5wo6KyeD0cJJksXV2pzdBRrCvQLRTjXvzgqj29yQAbdqTBi5UZyzqEz9KoSGh72M
# fB7henzUKtMHWX34Qh26QJs/STLPHRZnO156IM3mt2KJBH2YEm6WMIIHcTCCBVmg
# AwIBAgITMwAAABXF52ueAptJmQAAAAAAFTANBgkqhkiG9w0BAQsFADCBiDELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9z
# b2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEwOTMwMTgy
# MjI1WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAx
# MDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAOThpkzntHIhC3miy9ck
# eb0O1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+F2Az/1xPx2b3lVNxWuJ+Slr+
# uDZnhUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU88V29YZQ3MFEyHFcUTE3oAo4
# bo3t1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqYO7oaezOtgFt+jBAcnVL+tuhi
# JdxqD89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzpcGkNyjYtcI4xyDUoveO0hyTD
# 4MmPfrVUj9z6BVWYbWg7mka97aSueik3rMvrg0XnRm7KMtXAhjBcTyziYrLNueKN
# iOSWrAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9fvzZnkXf
# tnIv231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdHGO2n6Jl8
# P0zbr17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7XKHYC4jMY
# ctenIPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiER9vcG9H9
# stQcxWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/eKtFtvUe
# h17aj54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB2TASBgkrBgEEAYI3FQEEBQID
# AQABMCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAdBgNVHQ4E
# FgQUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEEAYI3TIN9
# AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9w
# cy9Eb2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMIMBkGCSsG
# AQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTAD
# AQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0w
# S6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3Rz
# L01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYI
# KwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWlj
# Um9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQCdVX38
# Kq3hLB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOXPTEztTnXwnE2P9pkbHzQdTlt
# uw8x5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gngugnue99q
# b74py27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/zjj3G82jfZfakVqr3lbYoVSfQ
# JL1AoL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHCgRlCGVJ1
# ijbCHcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6MhrZlvSP
# 9pEB9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEUBHG/ZPkk
# vnNtyo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo3GcZKCS6OEuabvshVGtqRRFH
# qfG3rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+fpO+y/g7
# 5LcVv7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrpNPgkNWcr
# 4A245oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9vMvpe784cETRkPHIqzqKOghi
# f9lwY1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAtcwggJAAgEBMIIBAKGB2KSB
# 1TCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UE
# CxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQL
# Ex1UaGFsZXMgVFNTIEVTTjoyQUQ0LTRCOTItRkEwMTElMCMGA1UEAxMcTWljcm9z
# b2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUAAa7YNHNaQqWO
# ZfJJfWSiscvh8yeggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAx
# MDANBgkqhkiG9w0BAQUFAAIFAOVPrdcwIhgPMjAyMTExMzAwMzUxNTFaGA8yMDIx
# MTIwMTAzNTE1MVowdzA9BgorBgEEAYRZCgQBMS8wLTAKAgUA5U+t1wIBADAKAgEA
# AgIO7wIB/zAHAgEAAgI98DAKAgUA5VD/VwIBADA2BgorBgEEAYRZCgQCMSgwJjAM
# BgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEB
# BQUAA4GBAFAcEZ51JXDxXa1qsmzGxqAW6AKhhSSBNtUDXroik22UXniDNLNMvvYJ
# INbvCNXAM42NYLJnvZ9BNwIzKTJnMlfJxBryHBaRuc8+GaLWPsHgduKUojupohyr
# gQ3cKkvoSlI4VJCy5mloVjTtyQl+0PYyk5FcH+yxOGR2e/pMlXBGMYIEDTCCBAkC
# AQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNV
# BAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQG
# A1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGGeOUZifgk
# S8wAAQAAAYYwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG
# 9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQg1dwYrTd74HTLlzhZ//R65f/BMGO80bgr
# HZ6M12KVIHYwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCAamYjgsiwIVMaJ
# jJ9EBHubsVraC7FU0jDXuZwCKrxCfjCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0
# YW1wIFBDQSAyMDEwAhMzAAABhnjlGYn4JEvMAAEAAAGGMCIEIMrYiciPbkKsOPX+
# FnTFxh/0BIjnlI3L73eKm+9/zh1TMA0GCSqGSIb3DQEBCwUABIICAEscxYzZK2wQ
# AdHz4QyuzXRN7lgsjAlbScPl8p1Uv3vLpdgXOw8jJPqve/GqbJ4bA8I7CB1Vs83e
# AdK8uZZYTKqchdJGP1f1Xx6ZNKFqDZ/vjXLTAb0MTsSb8uFcekIKeul/mWVgNaXN
# 68YnlwpIzc018vq9locr15BUh8JO5uZsmYKBJQJJf5gwmmHNIVgTJWT2VEkLZ5TS
# L5XrRlEAJatU7r2q5JCnvQnAhHGMuEeWQ1KtdgPMVJvd7X3iVHWfZNiyWWjc7Bb5
# ppCXajDr+Ai++81Dkfxk8FmMeUsIB5vpwF/mMN+OpEOIdc6+iwRdd3t7FZ1IVL0D
# JNNE7Q8N9TpulTCwd627f8Azs6npr+x3u2Do/53/hNQJB4lK5S/ZLJG8gd5qiQr9
# GeyN00k0R8tF1lZYFEGvK7iEOZAtV9HapvKRzZRIbZBcDgiejWveWGAx1s36A4qb
# 669cOH0jAeWpsgLUiy5JvQCpE4wwE9eZ0Hoq0EMgrs8/8ehNxoP2rXA4wgu0tbtV
# 9Pk7nWXCDFSlQTxdxBmkHi5La8PDLr1RLQbFsz3q2qSxWgy8Kgk7x7j8ynwGtcud
# a0AQ4pUj5Rz7eZ9BzKmt/WhNExK9eEco/3Gn9ewsmOjPggpolhkKWlPZUBRr2HTS
# 2QNZeJiF3H4CAU7/0gpgn0sn1eeW5otE
# SIG # End signature block
