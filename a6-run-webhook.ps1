# https://docs.microsoft.com/en-us/azure/automation/automation-webhooks#sample-runbook

$uri = "https://s2events.azure-automation.net/webhooks?token=gSWDVOz7f7NgPfOcdVcSpG1M96FxytJbSg8quw7TXAA%3d"

$site  = @{ title="Warsaw23"; quotaInGB=2; owner = "admin@M365x251516.onmicrosoft.com" }

$body = ConvertTo-Json -InputObject $site
#$header = @{ message="StartedbyContoso"}

$response = Invoke-WebRequest -Method Post -Uri $uri -Body $body # -Headers $header

$jobid = (ConvertFrom-Json ($response.Content)).jobids[0]
$jobid


