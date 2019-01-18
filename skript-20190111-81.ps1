Get-Content c:\address.txt

$address=(Get-Content c:\address.txt)
$address

$workaddress = @"
Nackademin
Tomtebodagatan 3A
"@
$workaddress

$myname = @"
Gustav
Löwenhoff
"@
$myname

$myname | gm

($myname).ToLower()
($myname).ToUpper()