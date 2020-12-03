variable "primary_region" {
    type = string
    default = "northeurope"
    description = "Primary Region"
}

variable "network_resource_group" {
    type = string 
    default = "rg-ne-Terraform-Network"
    description = "Resource Group that holds the deployed network resources"
}