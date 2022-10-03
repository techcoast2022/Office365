Connect-ExchangeOnline
#Disable ActiveSync for all new mailboxes:
Get-CASMailboxPlan | Set-CASMailboxPlan -ActiveSyncEnabled $False

#Disable ActiveSync for all existing mailboxes
$Mailboxes = Get-Mailbox -ResultSize Unlimited 
ForEach ($Mailbox in $Mailboxes) {Set-CASMailbox -Identity $Mailbox.UserPrincipalName -ActiveSyncEnabled $False}