New-Item -Path C:\temp\gronsaker.txt -ItemType file

add-Content c:\temp\gronsaker.txt "Tomat","Gurka","Tomat","Paprika","Sallad"

Get-Content c:\temp\gronsaker.txt | Sort-Object -Unique

add-Content c:\temp\gronsaker.txt "Listan innehåller 4 unika grönsaker"
