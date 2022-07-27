acrname='cayersbicepacr'
rg='rg-bicep-acr'
az acr create -g $rg --name $acrname --sku Basic --location eastus

az acr repository list --name $acrname --output table

az bicep publish \
  --file website.bicep \
  --target "br:$acrname.azurecr.io/website:v1"

az bicep publish \
  --file cdn.bicep \
  --target "br:$acrname.azurecr.io/cdn:v1"

az acr repository list --name $acrname --output table
