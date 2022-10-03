Connect-ExchangeOnline
$Distro = Read-Host -Prompt 'Enter the Diplay Name for the distro name you wish to export'
Get-DistributionGroupMember -Identity $Distro -ResultSize Unlimited | Select-Object PrimarySmtpAddress | Export-Csv C:\temp\$Distro.csv -NoTypeInformation