[CmdletBinding()]
param (
    [Parameter(
        Position = 0,
        HelpMessage = "The name of the resource group to be created. All resources will be place in the resource group."
    )]
    [string]
    $rgName = "rg-bicep"
)

Write-Output "az deployment group create -g $rgName --template-file ./main.bicep  --confirm-with-what-if"
az deployment group create -g $rgName --template-file ./main.bicep --confirm-with-what-if

