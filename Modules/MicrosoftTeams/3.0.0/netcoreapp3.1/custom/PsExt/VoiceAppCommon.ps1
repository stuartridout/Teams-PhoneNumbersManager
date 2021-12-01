﻿# ----------------------------------------------------------------------------------
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

# Objective of this custom file: Provide common functions for voice app team cmdlets

function Write-AdminServiceDiagnostic {
    [CmdletBinding(PositionalBinding=$true)]
    param(
        [Parameter(Mandatory=$false, position=0)]
        [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IDiagnosticRecord[]]
        # The diagnostic object
        ${Diagnostics}
    )
    process {
        if ($Diagnostics -eq $null)
        {
            return
        }

        foreach($diagnostic in $Diagnostics)
        {
            if ($diagnostic.Level -eq $null)
            {
                Write-Output $diagnostic.Message
            }
            else
            {
                switch($diagnostic.Level)
                {
                    "Warning" { Write-Warning $diagnostic.Message }
                    "Info" { Write-Output $diagnostic.Message }
                    "Verbose" { Write-Verbose $diagnostic.Message }
                    default { Write-Output $diagnostic.Message }
                }
            }
        }
    }
}

function Get-StatusRecordStatusString {
    [CmdletBinding(PositionalBinding=$true)]
    param(
        [Parameter(Mandatory=$false, position=0)]
        [Int]
        # The int status from status record
        ${StatusRecordStatus}
    )
    process {
        if ($StatusRecordStatus -eq $null)
        {
            return
        }

        $status = ''

        switch ($StatusRecordStatus)
        {
            0 {$status = 'Error'}
            1 {$status = 'Pending'}
            2 {$status = 'Unknown'}
            3 {$status = 'Success'}
        }

        $status
    }
}

function Get-StatusRecordStatusCodeString {
    [CmdletBinding(PositionalBinding=$true)]
    param(
        [Parameter(Mandatory=$false, position=0)]
        [Int]
        # The int status from status record
        ${StatusRecordErrorCode}
    )
    process {
        if ($StatusRecordErrorCode -eq $null)
        {
            return
        }

        $statusCode = ''

        switch ($StatusRecordErrorCode)
        {
            'ApplicationInstanceAssociationProvider_AppEndpointNotFound' {$statusCode = 'AppEndpointNotFound'}
            'ApplicationInstanceAssociationStatusProvider_AppEndpointNotFound' {$statusCode = 'AppEndpointNotFound'}
            'ApplicationInstanceAssociationStatusProvider_AcsAssociationNotFound' {$statusCode = 'AcsAssociationNotFound'}
            'ApplicationInstanceAssociationStatusProvider_ApsAssociationNotFound' {$statusCode = 'ApsAppEndpointNotFound'}
            'AudioFile_FileNameNullOrWhitespace' {$statusCode = 'AudioFileNameNullOrWhitespace'}
            'AudioFile_FileNameTooShort' {$statusCode = 'AudioFileNameTooShort'}
            'AudioFile_FileNameTooLong' {$statusCode = 'AudioFileNameTooLong'}
            'AudioFile_InvalidAudioFileExtension' {$statusCode = 'InvalidAudioFileExtension'}
            'AudioFile_InvalidFileName' {$statusCode = 'InvalidAudioFileName'}
            'AudioFile_UnsupportedAudioFileExtension' {$statusCode = 'UnsupportedAudioFileExtension'}
            'CreateApplicationEndpoint_ApsAppEndpointInvalid' {$statusCode = 'ApsAppEndpointInvalid'}
            'CreateApplicationInstanceAssociation_AppEndpointAlreadyAssociated' {$statusCode = 'AcsAssociationAlreadyExists'}
            'CreateApplicationInstanceAssociation_AppEndpointNotFound' {$statusCode = 'AppEndpointNotFound'}
            'CreateApplicationInstanceAssociation_AppEndpointMissingProvisioning' {$statusCode = 'AppEndpointMissingProvisioning'}
            'DateTimeRange_InvalidDateTimeRangeBound' {$statusCode = 'InvalidDateTimeRangeFormat'}
            'DateTimeRange_InvalidDateTimeRangeKind' {$statusCode = 'InvalidDateTimeRangeKind'}
            'DateTimeRange_NonPositiveDateTimeRange' {$statusCode = 'InvalidDateTimeRange'}
            'DeserializeScheduleOperation_InvalidModelVersion' {$statusCode = 'InvalidSerializedModelVersion'}
            'EnvironmentContextMapper_ForestNameNullOrWhiteSpace' {$statusCode = 'ForestNameNullOrWhiteSpace'}
            'FixedSchedule_DuplicateDateTimeRangeStartBoundaries' {$statusCode = 'DuplicateDateTimeRangeStartBoundaries'}
            'FixedSchedule_InvalidDateTimeRangeBoundariesAlignment' {$statusCode = 'InvalidDateTimeRangeBoundariesAlignment'}
            'ModelId_InvalidScheduleId' {$statusCode = 'InvalidScheduleId'}
            'ModifyScheduleOperation_ScheduleConflictInExistingAutoAttendant' {$statusCode = 'ScheduleConflictInExistingAutoAttendant'}
            'RemoveApplicationInstanceAssociation_AppEndpointNotFound' {$statusCode = 'AppEndpointNotFound'}
            'RemoveApplicationInstanceAssociation_AssociationNotFound' {$statusCode = 'AcsAssociationNotFound'}
            'RemoveScheduleOperation_ScheduleInUse' {$statusCode = 'ScheduleInUse'}
            'Schedule_NameNullOrWhitespace' {$statusCode = 'ScheduleNameNullOrWhitespace'}
            'Schedule_NameTooLong' {$statusCode = 'ScheduleNameTooLong'}
            'Schedule_FixedScheduleNull' {$statusCode = 'ScheduleTypeMismatch'}
            'Schedule_FixedScheduleNonNull' {$statusCode = 'ScheduleTypeMismatch'}
            'Schedule_WeeklyRecurrentScheduleNull' {$statusCode = 'ScheduleTypeMismatch'}
            'Schedule_WeeklyRecurrentScheduleNonNull' {$statusCode = 'ScheduleTypeMismatch'}
            'ScheduleRecurrenceRange_InvalidType' {$statusCode = 'InvalidRecurrenceRangeType'}
            'ScheduleRecurrenceRange_UnsupportedType' {$statusCode = 'InvalidRecurrenceRangeType'}
            'ScheduleRecurrenceRange_NonPositiveRange' {$statusCode = 'InvalidRecurrenceRangeEndDateTime'}
            'ScheduleRecurrenceRange_EndDateTimeNull' {$statusCode = 'InvalidRecurrenceRangeEndDateTime'}
            'ScheduleRecurrenceRange_EndDateTimeNonNull' {$statusCode = 'InvalidRecurrenceRangeEndDateTime'}
            'ScheduleRecurrenceRange_NumberOfOccurrencesZero' {$statusCode = 'InvalidRecurrenceNumberOfOccurrences'}
            'ScheduleRecurrenceRange_NumberOfOccurrencesNull' {$statusCode = 'InvalidRecurrenceNumberOfOccurrences'}
            'ScheduleRecurrenceRange_NumberOfOccurrencesNonNull' {$statusCode = 'InvalidRecurrenceNumberOfOccurrences'}
            'TimeRange_InvalidTimeRange' {$statusCode = 'InvalidTimeRange'}
            'TimeRange_InvalidTimeRangeBound' {$statusCode = 'InvalidTimeRangeBound'}
            'WeeklyRecurrentSchedule_EmptySchedule' {$statusCode = 'EmptyWeeklyRecurrentSchedule'}
            'WeeklyRecurrentSchedule_InvalidTimeRangeBoundariesAlignment' {$statusCode = 'InvalidTimeRangeBoundariesAlignment'}
            'WeeklyRecurrentSchedule_OverlappingTimeRanges' {$statusCode = 'TimeRangesOverlapping'}
            'WeeklyRecurrentSchedule_TooManyTimeRangesPerDay' {$statusCode = 'TooManyTimeRangesForDay'}
            'WeeklyRecurrentSchedule_RecurrenceRangeNull' {$statusCode = 'ScheduleRecurrenceRangeNull'}
        }

        $statusCode
    }
}
# SIG # Begin signature block
# MIIjbQYJKoZIhvcNAQcCoIIjXjCCI1oCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDNheqsmYnn1Cwm
# vFs5JKA8ildMwOZfB12lxyn2ypuEMKCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
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
# wb1tbWrJUnMTDXpQzTGCFVAwghVMAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIDE2UN0ORjDtZjq2V+BVqdOqqsUF
# exReVsBh4wXeh4qzMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAG4Ios3a
# mvr9xwXw7P3fMCuwDgFGAratTCsVYZYhTD14wmYhUtzeJHAjPqw/nWlxscW7kNNw
# TFIxVP3ZPbfzeYMdSBW3K2+TykOMbjFxailZYQjAWkhp153Gef7Z+EVOLHEWOGR8
# WyaPbsyyeAwO2Kzl9uNjl4KyjIdcH/ZtN/px75w7i1H7SmoNu8TZ6JVTW/Llk6eT
# fnTpxiNwKMUZvB16Eq/ICevnUsDlqHYo9EaHbk3JOyEcIspu8PVnr1msdvM8B4y1
# FPA9Gm+gOr6MgbJwD6p5PMgerIrPHpz+FKf4O7lChTfKVoJntCmccLNOEiprNpoR
# k0hQPYixWeklkKuhghLiMIIS3gYKKwYBBAGCNwMDATGCEs4wghLKBgkqhkiG9w0B
# BwKgghK7MIIStwIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBUQYLKoZIhvcNAQkQAQSg
# ggFABIIBPDCCATgCAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgxGpa
# MmyeE4b3pYw4cbrnosgESjDRuCKS+vo1RHDCtNgCBmGS4WVo6RgTMjAyMTExMzAw
# NjQ5NDUuNTE5WjAEgAIB9KCB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0
# aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046M0U3QS1FMzU5LUEyNUQxJTAj
# BgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wggg45MIIE8TCCA9mg
# AwIBAgITMwAAAVIwS12JrOZwRwAAAAABUjANBgkqhkiG9w0BAQsFADB8MQswCQYD
# VQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEe
# MBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMDExMTIxODI2MDVaFw0yMjAyMTEx
# ODI2MDVaMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUw
# IwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjozRTdBLUUzNTktQTI1RDElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
# ggEBAK7MboSJmHS1oJJuzAyK6kxNidtugXOOPUO4Ntu9PRFcoEJWX+6YD5TLbXgO
# YeIWGR65F2UsHTJrlL26bloqvuUEGpnO+0qAY2AJFsNMb1i7qTMPM9PNBG6VUi+h
# ZXLSAhOcTKgnU7ebkg+mwsE1AJ1eyH7dNkXvckBy5vbVufGb/izF7jNN1t220Gup
# fz8kkXZUScA/4wG8XZRBKjpdQBpMoL8c8M8Jx78iw2gDHEsMjXAeEiWqNEGe3gcz
# kdwoetmu8f68eeKGKR2UTOHd+NAWjCTV8bs9WGY7rQ7m9V2oD4f3fXiEcQ1AjRxu
# j5KRKLxJIlIs2LGCPR5Z49OHulsCAwEAAaOCARswggEXMB0GA1UdDgQWBBSE3a7a
# rCPWXZzaH+RQsO4FEmx7FDAfBgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVt
# VTBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtp
# L2NybC9wcm9kdWN0cy9NaWNUaW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYB
# BQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpL2NlcnRzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8E
# AjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQBVxSdx
# 8WpJrNBsMRd/d3XT+6mJZBTkd1NvAb2/1t5UgNobigQvIhw0Tp7oJs4EyU9T6yal
# hhycreO5w2oKHCq4ubF2LaI/LiJDq+MB0Gn35UVaWsGpSw1dnOMKmAwJmPpu7xer
# Q2d2XhbIFsjQmS7ry9Q0bjCwx0o/d3P7UzOT1JSZrePsfI0Dnn12j2eEqahkyfl2
# 1/TdC/GVoTAwBo+T3G5S/0E3xw28WelaTiYsRFBbq0DetcrSygQhIpNgbs6x7ugx
# dkNg9bF/2gWFgrNnD9LCeF0GiPZLl7JgTcC4X9lfNHeF2nf9cbNl450RF8XLWsLt
# kHCEMhqN4UyLncafMIIGcTCCBFmgAwIBAgIKYQmBKgAAAAAAAjANBgkqhkiG9w0B
# AQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNV
# BAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAG
# A1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAw
# HhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAxMjE0NjU1WjB8MQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1T
# dGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKkd
# Dbx3EYo6IOz8E5f1+n9plGt0VBDVpQoAgoX77XxoSyxfxcPlYcJ2tz5mK1vwFVMn
# BDEfQRsalR3OCROOfGEwWbEwRA/xYIiEVEMM1024OAizQt2TrNZzMFcmgqNFDdDq
# 9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+BVLHPk0ySwcSmXdFhE24oxhr5hoC732H8
# RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3wV3WsvYpCTUBR0Q+cBj5nf/VmwAOWRH7v
# 0Ev9buWayrGo8noqCjHw2k4GkbaICDXoeByw6ZnNPOcvRLqn9NxkvaQBwSAJk3jN
# /LzAyURdXhacAQVPIk0CAwEAAaOCAeYwggHiMBAGCSsGAQQBgjcVAQQDAgEAMB0G
# A1UdDgQWBBTVYzpcijGQ80N7fEYbxTNoWoVtVTAZBgkrBgEEAYI3FAIEDB4KAFMA
# dQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAW
# gBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8v
# Y3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRf
# MjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRw
# Oi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEw
# LTA2LTIzLmNydDCBoAYDVR0gAQH/BIGVMIGSMIGPBgkrBgEEAYI3LgMwgYEwPQYI
# KwYBBQUHAgEWMWh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9QS0kvZG9jcy9DUFMv
# ZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AUABvAGwA
# aQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIB
# AAfmiFEN4sbgmD+BcQM9naOhIW+z66bM9TG+zwXiqf76V20ZMLPCxWbJat/15/B4
# vceoniXj+bzta1RXCCtRgkQS+7lTjMz0YBKKdsxAQEGb3FwX/1z5Xhc1mCRWS3Tv
# QhDIr79/xn/yN31aPxzymXlKkVIArzgPF/UveYFl2am1a+THzvbKegBvSzBEJCI8
# z+0DpZaPWSm8tv0E4XCfMkon/VWvL/625Y4zu2JfmttXQOnxzplmkIz/amJ/3cVK
# C5Em4jnsGUpxY517IW3DnKOiPPp/fZZqkHimbdLhnPkd/DjYlPTGpQqWhqS9nhqu
# BEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96LjlXdqJxqgaKD4kWumGnEcua2A5HmoDF
# 0M2n0O99g/DhO3EJ3110mCIIYdqwUB5vvfHhAN/nMQekkzr3ZUd46PioSKv33nJ+
# YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiFAR6A+xuJKlQ5slvayA1VmXqHczsI5pgt
# 6o3gMy4SKfXAL1QnIffIrE7aKLixqduWsqdCosnPGUFN4Ib5KpqjEWYw07t0Mkvf
# Y3v1mYovG8chr1m1rtxEPJdQcdeh0sVV42neV8HR3jDA/czmTfsNv11P6Z0eGTgv
# vM9YBS7vDaBQNdrvCScc1bN+NR4Iuto229Nfj950iEkSoYICyzCCAjQCAQEwgfih
# gdCkgc0wgcoxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAj
# BgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRo
# YWxlcyBUU1MgRVNOOjNFN0EtRTM1OS1BMjVEMSUwIwYDVQQDExxNaWNyb3NvZnQg
# VGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQC/bp5Ulq6ZyZNyF3qG
# prJAw0NeW6CBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0G
# CSqGSIb3DQEBBQUAAgUA5U/UijAiGA8yMDIxMTEzMDA2MzY1OFoYDzIwMjExMjAx
# MDYzNjU4WjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDlT9SKAgEAMAcCAQACAgTz
# MAcCAQACAhElMAoCBQDlUSYKAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQB
# hFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEA
# M3LvGf3rxdGkRj3VxbvMGk+psHFj5uHO7Qyd1DxGGBbPLCcJXC4/Ebm6vHemhd/T
# JmgCge8NiGYIvx5cI10IrUuzz0Y9GB7krlc/CiDr5Cf0L8ftnASAUZsEqZ20Qinv
# G935Kt9atOzZbxPLKUXRrhrO5oRHxoxt86U25Lwchv4xggMNMIIDCQIBATCBkzB8
# MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVk
# bW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1N
# aWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAVIwS12JrOZwRwAAAAAB
# UjANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEE
# MC8GCSqGSIb3DQEJBDEiBCCiRjO8YM5QAq4kO2piu3TDLdoX4vZI4ZjB9lps1HJq
# PDCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIJPuXMejiyVQjF8QanwtdA2K
# T95wrq+64ZYhyYGuuyemMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENB
# IDIwMTACEzMAAAFSMEtdiazmcEcAAAAAAVIwIgQg3XLnSWwBNpuGlEsGQqN+9dSP
# 0xroNLSRIvtQM0E0dlowDQYJKoZIhvcNAQELBQAEggEAdqww93l7aERsxfv3bOTj
# MVlZFS087V/DUeEC/hWSdCBPt0alCkXlb8cUb+B5QiZacCm86ZukIlmGV4FjuOJV
# FG6y5cwYsdp/nuUxc5nWPC5s2QUO6jL0yDhfr5XA8XF0DEk4U+z3XRNUFc4Ekguj
# RPzloomc8MQk0EQJDLN6eyY4U6FxrZuThYqZDUDvGAtr8hOakXKqtDvjJD9NitjZ
# I6EZXKf4Wye1E00uWokvs9pvhvEYpgTLAlUcG/n/BzA3TE7Rn9KlsZNiMmYdS9U6
# QF6pkw2V6ZU7kwfWoheU+X3B+CTGoLycHbN4uhG7DhmPaE/y95mLNCy1h13sz9Up
# Ig==
# SIG # End signature block
