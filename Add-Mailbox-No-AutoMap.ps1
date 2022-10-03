$Username = Read-Host -Prompt 'Enter your username'
Connect-ExchangeOnline -UserPrincipalName $Username
$Mailbox = Read-Host -Prompt 'Enter mailbox you wish to access'
Add-MailboxPermission -Identity $Mailbox -User $Username -AccessRights FullAccess -AutoMapping:$false 