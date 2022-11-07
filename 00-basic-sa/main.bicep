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

