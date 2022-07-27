#! /bin/bash

rg="${1:-rg-bicep}"
today=$(date +"%F-%H%M%S")

deploymentName="main-"$today

echo az deployment group create -g $rg  --name $deploymentName --template-file ./main.bicep
az deployment group create -g $rg  --name $deploymentName --template-file ./main.bicep
