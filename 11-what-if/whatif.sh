#! /bin/bash

rg="${1:-rg-bicep}"
echo az deployment group what-if -g $rg --template-file ./main.bicep 
az deployment group what-if -g $rg --template-file ./main.bicep 
