# Azure Instance Metadata Service

The Azure Instance Metadata Service (IMDS) provides information about currently running virtual machine instances. You can use it to manage and configure your virtual machines. This information includes the SKU, storage, network configurations, and upcoming maintenance events.

# Access Azure Instance Metadata Service

You can access instance metadata from the following command or use the PowerShell script from this repo

Following is one liner code to access the IDMS info

* Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64

or else use the ps script from the repo, both gives the same result. However, ps script is structured and can be reused.
