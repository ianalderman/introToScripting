az group create --name rg-ne-bashArmTemplateDeployment --location northeurope
az deployment group create -g rg-ne-bashArmTemplateDeployment --template-file "../azureDeploy.json"