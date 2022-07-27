#! /bin/bash

rg="${1:-rg-bicep}"
echo $rg
az deployment group create -g $rg --template-file ./empty/main.bicep --mode complete
