Get-EventLog -LogName Security -InstanceID 4624 -EntryType SuccessAudit | measure | Out-File -FilePath C:\temp\Logins.txt -Encoding default

Get-EventLog "Security" | Where -FilterScript {$_.EventID -eq 4624 -and $_.ReplacementStrings[8] -eq 2} | Out-File -FilePath C:\temp\Logins.txt -Encoding default -Append

Get-EventLog "Security" | Where -FilterScript {$_.EventID -eq 4624 -and $_.ReplacementStrings[8] -eq 3} | Out-File -FilePath C:\temp\Logins.txt -Encoding default -Append

Get-EventLog "Security" | Where -FilterScript {$_.EventID -eq 4624 -and $_.ReplacementStrings[8] -eq 7} | Out-File -FilePath C:\temp\Logins.txt -Encoding default -Append

Get-EventLog -LogName Security -InstanceID 4625 -EntryType FailureAudit | Out-File -FilePath C:\temp\Logins.txt -Encoding default -Append
