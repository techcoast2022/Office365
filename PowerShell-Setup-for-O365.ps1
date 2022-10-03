#Ensure OneDrive is running
#Ensure Set-ExecutionPolicy is set to Unrestricted
#Install-Module PowerShellGet -Force
#Install-Module –Name ExchangeOnlineManagement
#Open PowerShell then run the following commands:
$username = Read-Host -Prompt 'Enter user name'
Connect-ExchangeOnline -UserPrincipalName $usernamed