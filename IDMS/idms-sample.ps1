Function AzureMeta {
    Param( [Parameter(ValueFromPipeline)] $p ) 
    
    Invoke-RestMethod `
        –Headers @{"Metadata"="true"} `
        –URI "http://169.254.169.254/metadata/instance/$($p)?api-version=2021-02-01" -Method Get |
    % Compute | 
    ConvertTo-Json
}

# Get the public IP if your Azure instance
"network/interface/0/ipv4/ipAddress/0/publicIpAddress" | AzureMeta

# Get the Virtual Machine Size/SKU, e.g. "Standard_B2s"
"compute/vmSize" | AzureMeta