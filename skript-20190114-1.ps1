New-Item -Path C:\temp -ItemType Directory 

New-Item -Path C:\temp\test.txt -ItemType file

Add-Content c:\temp\test.txt $(Get-Date)

add-Content c:\temp\test.txt "Välkommen till Nackademin"

Clear-Content c:\temp\test.txt

add-Content c:\temp\test.txt "Välkommen till Nackademin"

Add-Content c:\temp\test.txt $(Get-Date)