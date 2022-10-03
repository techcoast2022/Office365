Connect-MsolService
$Users = @("O365-Azure-Sync-Account")
$mf = New-Object -TypeName Microsoft.Online.Administration.StrongAuthenticationRequirement
$mf.RelyingParty = "*"
$mfa = @($mf)
Get-MsolUser -All | Where-Object UserPrincipalName -NotIn $Users | Set-MsolUser -StrongAuthenticationRequirements $mfa