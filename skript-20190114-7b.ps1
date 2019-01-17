New-Item C:\temp\kommandon-20190115.html -ItemType File

Get-History | Export-Clixml -Path c:\temp\$(get-date -f yyyy-MM-dd).xml

Compare-Object -ReferenceObject $(Get-Content C:\temp\$(get-date -f yyyy-MM-dd).xml) -DifferenceObject $(Get-Content C:\temp\$(get-date -f yyyy-MM-dd).xml) -IncludeEqual

