function Color-Console {
  $Host.ui.rawui.backgroundcolor = "black"
  $Host.ui.rawui.foregroundcolor = "green"
  $hosttime = (Get-ChildItem -Path $pshome\PowerShell.exe).CreationTime
  $hostversion="$($Host.Version.Major)`.$($Host.Version.Minor)"
  $Host.UI.RawUI.WindowTitle = "PowerShell $hostversion ($hosttime)"
  Clear-Host
}
Color-Console

$cert=New-SelfSignedCertificate -Subject "My Code Signing Certificate” -Type CodeSigningCert -CertStoreLocation cert:\LocalMachine\My
Export-Certificate -Cert $cert -FilePath "C:\temp\Mitt-rootCA.crt"
Import-Certificate -CertStoreLocation 'Cert:\LocalMachine\Root' -FilePath "C:\temp\Mitt-rootCA.crt"
Set-AuthenticodeSignature -FilePath C:\Users\Administrator\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1 -Certificate $cert


# SIG # Begin signature block
# MIIFkQYJKoZIhvcNAQcCoIIFgjCCBX4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU9ie9RwTvcnCdsIkttKOoRRto
# dFigggMgMIIDHDCCAgSgAwIBAgIQV/SjETSE25tHZTwf5Dxx6jANBgkqhkiG9w0B
# AQsFADAmMSQwIgYDVQQDDBtNeSBDb2RlIFNpZ25pbmcgQ2VydGlmaWNhdGUwHhcN
# MTkwMTE3MDgzOTAyWhcNMjAwMTE3MDg1OTAyWjAmMSQwIgYDVQQDDBtNeSBDb2Rl
# IFNpZ25pbmcgQ2VydGlmaWNhdGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
# AoIBAQDYvKOkgRahpUs38XjGT4jhMo342f8IK4kK0XIoShY8yEZMmSmK3fngH9AE
# FEYWHmuW0qmqreayhgT+2v2DOTQiSRXZOSzbqTOt19WAfws+leHCHfGiZ6SrjMQ3
# RuWIXfHlXwiDBlW95IOTbLjm1ccmAujrp0vcJ4i2VqhV3JMH1i9lUxw+8dB1kiRw
# Wj7QEsFNK5dOyk/7G0b8M3OH/uP6Y9LgFgzlrG20DW08phbYBvRKUPK1HenFXwZz
# 4HKw8tukIruLIfEtzAZ3JoKgK6FU6/YG5ZyGAIgdLEmnvFPnPqVH+vKuc9KkzE/g
# wKbzPwA5LsjjD1V5WcE/d4cqQa/zAgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIHgDAT
# BgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQUqtcFnlpiBA+gl50eJQLtqrEX
# UvcwDQYJKoZIhvcNAQELBQADggEBACBm26upWU6LSbBHl7GExiAjLxuuSji8Q6uf
# v5msNJdQk8m02ctltGYkCxvaef3uVAg4Brx9tbdGFYoZOZFgoy5hAIPKVVzW1Hq+
# kc3NjqaTGBRkpDhW8B5JWgZ0SUy/SNAygomKzV3C8v9vIAR2slinpo1EMMDAYbC9
# HJ0q13Ca9AU47XsWAXs6dAeMGdDWW6z1Q0oVmcp11XMp5+Y+hXonDMw0tP5T34gJ
# h0Gfc91eQ/IO3G8tcPfaP4ZUUdjolzHIifvtIm4ESPS3kCdbR/a2yLZNT9Cj6ss0
# dUvY2RMTrsHM2gI/i592rVhproxjuT+02x5lRuEcj5tk1KVNy4gxggHbMIIB1wIB
# ATA6MCYxJDAiBgNVBAMMG015IENvZGUgU2lnbmluZyBDZXJ0aWZpY2F0ZQIQV/Sj
# ETSE25tHZTwf5Dxx6jAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAA
# oQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4w
# DAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU2NNG69VZYiXQUk8LAkz4Rba8
# ifgwDQYJKoZIhvcNAQEBBQAEggEAzdvyoOd37oa46gljFpnujH+yg4aqKmfcQmXG
# g9dH4ae94lCip3kQeEKT+JXFmsdPC8nrKWSjlzxro0Y0pH73QTC6mjQUzHCnHgqC
# jpEvA/lavuIiUSXrtK/2aGZuLb9zgLl6yyLpBFdmLetIXDRQH9nJku9cjOFyVaZG
# PYe0AVE3JuixQWrLeJt3Ds7Cfb7K2gXHXZ5M+fF3QUmHQZ3/BFM+GM59M/UpHbrB
# oCiS1whwT3aA2rVTd5GaRuT2pbznzK92pKhf+xYSjnFlG6XIZ7rlaTngM1n3kupt
# mmTmVneDOmdtq7XvTRvcSEt584l3N1H5qXeOwYxwPmAOcXhiuA==
# SIG # End signature block
