#! /bin/bash

acrname='cayersbicepacr'
rg='rg-bicep-acr'
date=$(date +"%F-%H%M%S")

az acr repository list --name $acrname --output table

az bicep publish \
  --file website.bicep \
  --target "br:$acrname.azurecr.io/website:$date"
az bicep publish \
  --file website.bicep \
  --target "br:$acrname.azurecr.io/website:v1"

az bicep publish \
  --file cdn.bicep \
  --target "br:$acrname.azurecr.io/cdn:$date"
az bicep publish \
  --file cdn.bicep \
  --target "br:$acrname.azurecr.io/cdn:v1"

az acr repository list --name $acrname --output table
