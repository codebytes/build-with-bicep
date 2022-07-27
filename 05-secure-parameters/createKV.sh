keyVaultName='cayers-bicep-kv' # A unique name for the key vault.
login='cayers' # The login that you used in the previous step.
password='Alt1024!7890' # The password that you used in the previous step.

az keyvault create -g rg-bicep-kv --name $keyVaultName --location eastus --enabled-for-template-deployment true
az keyvault secret set --vault-name $keyVaultName --name "sqlServerAdministratorLogin" --value $login
az keyvault secret set --vault-name $keyVaultName --name "sqlServerAdministratorPassword" --value $password