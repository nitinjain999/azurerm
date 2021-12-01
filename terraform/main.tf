terraform {
  backend "azurerm" {
    resource_group_name  = "nitinjainrg"
    storage_account_name = "njterraformstate"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  version = "~>2.0"
  features {}
}
 
