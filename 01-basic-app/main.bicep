resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'buildwithbicepcayers'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}


resource appServicePlan 'Microsoft.Web/serverFarms@2021-03-01' = {
  name: 'build-with-bicep-plan'
  location: 'eastus'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2021-03-01' = {
  name: 'build-with-bicep-cayers'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
