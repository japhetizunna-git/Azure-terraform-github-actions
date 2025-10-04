# data "azurerm_resource_group" "fizu" {
#   name = "japhstore"
#   #location = "East US"
# }


# resource "azurerm_storage_account" "example" {
#   name                     = "izunnastorage"
#   resource_group_name      = data.azurerm_resource_group.fizu.name
#   location                 = data.azurerm_resource_group.fizu.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
#  }