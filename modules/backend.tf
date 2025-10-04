terraform {
  backend "azurerm" {
    resource_group_name = "okwara"
    storage_account_name = "mybackendtf"
    container_name = "fitmebackend"
    key = "terraform.tfstate"
  }
}