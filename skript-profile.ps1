$profile | Get-Member -MemberType NoteProperty | Format-List

Test-Path -Path $profile

if (!(Test-Path -Path $profile))
{New-Item -ItemType File -Path $profile -Force}

Test-Path -Path $profile

notepad $profile

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

