New-Item -Path C:\temp\test2.txt -ItemType file

Add-Content c:\temp\test2.txt $(get-date -displayHint time)

add-Content c:\temp\test2.txt "Välkommen hem"

Compare-Object -ReferenceObject $(Get-Content C:\temp\test.txt) -DifferenceObject $(Get-Content C:\temp\test2.txt)