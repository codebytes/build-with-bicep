keyVaultName='YOUR-KEY-VAULT-NAME' # A unique name for the key vault.
login='YOUR-LOGIN' # The login that you used in the previous step.
password='YOUR-PASSWORD' # The password that you used in the previous step.

az keyvault create --name $keyVaultName --location westus --enabled-for-template-deployment true
az keyvault secret set --vault-name $keyVaultName --name "sqlServerAdministratorLogin" --value $login
az keyvault secret set --vault-name $keyVaultName --name "sqlServerAdministratorPassword" --value $password