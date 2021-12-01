terraform {
  backend "azurerm" {
    resource_group_name  = "nitinjainrg"
    storage_account_name = "njtfstatedevops"
    container_name       = "test"
    key                  = "test.tfstate"
  }
}
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you're using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
}
 
