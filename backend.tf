terraform {
  backend "azurerm" {
    resource_group_name  = "mybackendtf2"
    storage_account_name = "gitpract"
    container_name       = "fitmebackend"
    key                  = "terraform.tfstate"
  }
}