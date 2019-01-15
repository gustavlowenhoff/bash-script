$cert=New-SelfSignedCertificate -Subject "My Code Signing Certificate” -Type CodeSigningCert -CertStoreLocation cert:\LocalMachine\My

Export-Certificate -Cert $cert -FilePath "C:\temp\Mitt-rootCA.crt"

Import-Certificate -CertStoreLocation 'Cert:\LocalMachine\Root' -FilePath "C:\temp\Mitt-rootCA.crt"

Set-AuthenticodeSignature -FilePath C:\temp\skript-20190114-6.ps1 -Certificate $cert
