#! /bin/bash

rg="${1:-rg-bicep}"
echo az deployment group create -g $rg --template-file ./main.bicep --confirm-with-what-if 
az deployment group create -g $rg --template-file ./main.bicep  --confirm-with-what-if
