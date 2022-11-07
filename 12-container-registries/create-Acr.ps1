[CmdletBinding()]
param (
    [Parameter(
        Position = 0,
        HelpMessage = "The name of the resource group to be created. All resources will be place in the resource group."
    )]
    [string]
    $rgName = "rg-bicep-acr",
    [Parameter(
        Position = 1,
        HelpMessage = "The name of the resource group to be created. All resources will be place in the resource group."
    )]
    [string]
    $acrName = "cayersbicepacr"
)
$date = Get-Date -AsUTC -UFormat “%Y-%m-%d-%H%M%S”

Write-Output "az acr create -g $rgName --name $acrname --sku Basic --location eastus"
az acr create -g $rgName --name $acrname --sku Basic --location eastus

Write-Output "az acr repository list --name $acrname --output table"
az acr repository list --name $acrname --output table

Write-Output "az bicep publish --file website.bicep --target ""br:$acrname.azurecr.io/website:$date"""
az bicep publish --file website.bicep --target "br:$acrname.azurecr.io/website:$date"

Write-Output "az bicep publish --file cdn.bicep --target ""br:$acrname.azurecr.io/cdn:$date"""
az bicep publish --file cdn.bicep --target "br:$acrname.azurecr.io/cdn:$date"

Write-Output "az acr repository list --name $acrname --output table"
az acr repository list --name $acrname --output table
