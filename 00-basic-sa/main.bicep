resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'toylaunchstoragecayers'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

