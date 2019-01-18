New-Item C:\temp\fel.html -ItemType File

$File1="C:\temp\fel.html"

Get-EventLog -LogName System -EntryType Warning,Error | measure | ConvertTo-HTML | Out-File $File1

Get-EventLog -LogName System -EntryType Warning,Error -After (Get-Date).AddHours(-24) | ConvertTo-HTML | Out-File $File1

Get-EventLog -LogName System -EntryType Error,Warning -Newest 100 | Sort-Object -Unique | ConvertTo-HTML | Out-File $File1

$a=Get-EventLog -LogName System -EntryType Error,Warning -Newest 10 | measure
$a.Count

if ($a.Count -ge 10){
    Write-Warning ("More then 10 errors!")
}
