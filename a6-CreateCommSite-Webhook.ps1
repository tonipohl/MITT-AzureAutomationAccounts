#---------------------------------------------------------------------------------------
# a6-CreateCommSite-Webhook.ps1 
# Create a new SPO Communication Site with the SPO module.
# Import the SPO module before use.
# MITT, @atwork
#---------------------------------------------------------------------------------------
param
(
	[Parameter (Mandatory=$false)]
	[object] $WebhookData
)

Write-Output "Starting CreateCommSite..."

# If runbook was called from Webhook, WebhookData will not be null.
if ($WebhookData) {

    # Retrieve VM's from Webhook request body
    $site = (ConvertFrom-Json -InputObject $WebhookData.RequestBody)
	Write-Output $site

	$title = $site.title
	$quotaInGB = $site.quotaInGB
	$owner = $site.owner

	$tenant = Get-AutomationVariable -Name "tenantname"
	$cred = Get-AutomationPSCredential -Name 'NestorW'

	Connect-SPOService "https://$tenant-admin.sharepoint.com" -Credential $cred

	$siteUrl = "https://$tenant.sharepoint.com/sites/$title"
	Write-Output "Creating $siteUrl with Template STS#3"

	New-SPOSite -Title $title -Template "STS#3" -Owner $owner -Url $siteUrl -StorageQuota ($quotaInGB * 1024) 

	Write-Output "Enable external sharing without anonymous links"
	Set-SPOSite -Identity $siteUrl -SharingCapability ExternalUserSharingOnly

	Write-Output "Created $siteUrl"
}
else
{
	Write-Output "No Webhook data found!"
}