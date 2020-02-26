# https://docs.microsoft.com/en-us/azure/automation/automation-webhooks#sample-runbook

$uri = "<webhook-url>"

$site  = @{ title="newsite01"; quotaInGB=2; owner = "admin@<sometenant>.onmicrosoft.com" }

$body = ConvertTo-Json -InputObject $site
#$header = @{ message="SomeSecret"}

$response = Invoke-WebRequest -Method Post -Uri $uri -Body $body # -Headers $header

# Continue to work with the JobId
$jobid = (ConvertFrom-Json ($response.Content)).jobids[0]



