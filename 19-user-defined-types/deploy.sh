#! /bin/bash

rg="${1:-rg-bicep}"

echo az deployment group create -g $rg --template-file ./main.bicep  --parameters ./main.bicepparam
az deployment group create -g $rg --template-file ./main.bicep  --parameters ./main.bicepparam

