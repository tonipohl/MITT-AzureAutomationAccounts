#---------------------------------------------------------------------------------------
# a5-CreateCommSite.ps1 
# Create a new SPO Communication Site with the SPO module.
# Import the SPO module before use.
# MITT, @atwork
#---------------------------------------------------------------------------------------
param
(
	[Parameter (Mandatory=$true)]
	[string] $title = "Vienna30",
	[Parameter (Mandatory=$false)]
	[int] $quotaInGB = 1,
	[Parameter (Mandatory=$false)]
	[string] $owner = "admin@M365x251516.onmicrosoft.com"
)

Write-Output "Starting CreateCommSite..."
$tenant = Get-AutomationVariable -Name "tenantname"
$cred = Get-AutomationPSCredential -Name 'NestorW'

Connect-SPOService "https://$tenant-admin.sharepoint.com" -Credential $cred

$siteUrl = "https://$tenant.sharepoint.com/sites/$title"
Write-Output "Creating $siteUrl with Template STS#3"

New-SPOSite -Title $title -Template "STS#3" -Owner $owner -Url $siteUrl -StorageQuota ($quotaInGB * 1024) 

Write-Output "Enable external sharing without anonymous links"
Set-SPOSite -Identity $siteUrl -SharingCapability ExternalUserSharingOnly

Write-Output "Created $siteUrl"
