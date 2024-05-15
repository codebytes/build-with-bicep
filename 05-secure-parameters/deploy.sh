#! /bin/bash

rg="${1:-rg-bicep}"
echo az deployment group create -g $rg --template-file ./main.bicepb --parameters main.parameters.dev.json
az deployment group create -g $rg --template-file ./main.bicep --parameters main.parameters.dev.json
