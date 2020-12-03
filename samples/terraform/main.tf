terraform {
    required_version = "> 0.12.0"
}

provider "azurerm" {
    version = ">=2.0.0"
    features {}
}

resource "azurerm_resource_group" "rgTterraformNetwork" {
    name = var.network_resource_group
    location = var.primary_region
}

resource "azurerm_virtual_network" "vnTerraform" {
    name = "vnTerraform"
    location = azurerm_resource_group.rgTerraformNetwork.location
    resource_group_name = azurerm_resource_group.rgTerraformNetwork.name
    address_space = ["10.0.0.0/16"]
    
    subnet {
        name = "snDMZ"
        address_prefix = "10.0.0.0/24"
    }

    subnet {
        name = "snApplications"
        address_prefix = "10.0.1.0/24"
    }
}