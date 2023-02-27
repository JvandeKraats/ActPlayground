param region string = 'westeurope'
param gitHubPrincipalId string
var storageAccName = '${uniqueString(rg.id)}azfunctions'
var initFuncSubnetName = 'AzureFuncDelegatedSubnet'
var vnetName = 'virtualNetwork'

module initAzureFunction 'FuncApp.bicep' = {
  scope: resourceGroup('ActCLITest')
  name: 'Test-Function'
  params: {
    storageAccountName: storageAccName
    appName: 'Test app'
    location: region
  }
}