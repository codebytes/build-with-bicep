@description('The Azure region into which the resources should be deployed.')
param location string = 'eastus'

@description('The name of the App Service app.')
param appServiceAppName string = 'bwb-${uniqueString(resourceGroup().id)}'

@description('The name of the App Service plan SKU.')
param appServicePlanSkuName string = 'F1'

var appServicePlanName = 'bwb-plan'

module website 'br/CayersRegistry:website:v1' = {
  name: 'bwb-website'
  params: {
    appServiceAppName: appServiceAppName
    appServicePlanName: appServicePlanName
    appServicePlanSkuName: appServicePlanSkuName
    location: location
  }
}

module cdn 'br/CayersRegistry:cdn:v1' = {
  name: 'bwb-cdn'
  params: {
    httpsOnly: true
    originHostName: website.outputs.appServiceAppHostName
  }
}
