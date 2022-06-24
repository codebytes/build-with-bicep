//ex3
@secure()
@description('The administrator login username for the SQL server.')
param administratorLogin string

@secure()
@description('The administrator login password for the SQL server.')
param administratorLoginPassword string

param locations array = [
  'westeurope'
  'eastus2'
  'eastasia'
]

resource sqlServers 'Microsoft.Sql/servers@2020-11-01-preview' = [for (location, i) in locations: {
  name: 'sqlserver-${i+1}'
  location: location
  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
  }
}]
