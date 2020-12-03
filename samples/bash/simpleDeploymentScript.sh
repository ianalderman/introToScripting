az group create --name rg-ne-bashArmTemplateDeployment --location northeurope
az group deployment create -g rg-ne-bashArmTemplateDeployment --template-file "..\azureDeploy.json"