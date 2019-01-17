Install-Module xActiveDirectory

Get-AdDomain

Get-ADUser

Get-ADGroup

Get-ADPrincipalGroupMembership

"TestQAGroup","TestManagersGroup","TestDevGroup","TestAdministrators" | ForEach-Object {New-ADGroup -Name $_ -GroupScope Global}

$names ="Alan Turing","Gustav Löwenhoff"
$departments = "Test","Dev","QA"

foreach($name in $names) {
    Foreach($department in $departments) {
        $username = "{0}{1}" -f $name.substring(0.1). $name.split()[1]

        $user = NewADUser -GivenName $name.split()[0] `
                          -Surname $name.split()[1] `
                          -Name "$name$department" `
                          -AccountPassword (ConvertTo-SecureString -String "changeme1!" -AsPlainText -Force) `
                          -Department $department `
                          -UserPrincipalName "$username$department@VT17_2.local" `
                          -SamAccountName "$username$department" `
                          -PassThru

        Get-ADGroup -Filter 'name -like "test*"' | Add-ADGroupMember -Members $user
    }
}

Get-ADUser -Filter '(surname -eq "löwenhoff") -or (surname -eq"turing")' | Set-ADUser -Enabled $true