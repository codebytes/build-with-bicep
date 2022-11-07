[CmdletBinding()]
param (
    [Parameter(
        Position = 0,
        HelpMessage = "The name of the resource group to be created. All resources will be place in the resource group."
    )]
    [string]
    $rgName = "rg-bicep",

    [Parameter(
        Position = 1,
        HelpMessage = "The name of the Deployment."
    )]
    [string]
    $deploymentName = "main" + (Get-Date).tostring(“ddMMyyyy”)
)

Write-Output "az deployment group create -g $rgName  --name $deploymentName --template-file ./main.bicep"
az deployment group create -g $rgName  --name $deploymentName --template-file ./main.bicep

