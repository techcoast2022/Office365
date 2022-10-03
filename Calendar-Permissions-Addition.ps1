$Calendar = Read-Host 'Enter email to add calendar permissions to'
$User = Read-Host 'Enter email of person to grant Editor rights to the calendar'
Connect-ExchangeOnline
Add-MailboxFolderPermission $Calendar`:\calendar -user $User -AccessRights Editor