$Username = Read-Host -Prompt 'Enter your  O365 username'
Connect-ExchangeOnline -UserPrincipalName $username
$Subject = Read-Host -Prompt 'Enter exact subject to purge from all mailboxes'
$Date = Read-Host -Prompt 'Enter the date the email to be purged was received'
Get-Mailbox -ResultSize Unlimited | Search-Mailbox -SearchQuery "Subject:$Subject AND Received:$Date" -DeleteContent