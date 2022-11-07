param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2018-10-01' = {
  name: 'vnet-001'
  location: location
  tags: {
    CostCenter: '123'
    Owner: 'Team A'
  }
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    enableVmProtection: false
    enableDdosProtection: false
    subnets: [
      {
        name: 'subnet001'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
      {
        name: 'subnet002'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}
