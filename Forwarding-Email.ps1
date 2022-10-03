#To remove, run Set-Mailbox $Mailbox -ForwardingAddress $NULL -ForwardingSmtpAddress $NULL
Connect-ExchangeOnline
$Mailbox = Read-Host -Prompt 'Enter mailbox to forward'
$ForwardingAddress = Read-Host -Prompt 'Enter email address to forward to'
Set-Mailbox -Identity $Mailbox -ForwardingSMTPAddress "$ForwardingAddress"