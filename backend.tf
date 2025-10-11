terraform {
  backend "azurerm" {
    resource_group_name  = "mybackendtf"
    storage_account_name = "gitpract"
    container_name       = "fitmebackend"
    key                  = "terraform.tfstate"
  }
}