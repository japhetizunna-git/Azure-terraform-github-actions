# data "azurerm_resource_group" "fizu" {
#   name = "japhstore"
#   #location = "East US"
# }

# resource "azurerm_virtual_network" "network" {
#   name                = "izunnarg"
#   address_space       = ["10.0.0.0/16"]
#   location            = data.azurerm_resource_group.fizu.location
#   resource_group_name = data.azurerm_resource_group.fizu.name
# }

# resource "azurerm_subnet" "fizu" {
#   name                 = "internal"
#   resource_group_name  = data.azurerm_resource_group.fizu.name
#   virtual_network_name = azurerm_virtual_network.network.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "fizu" {
#   name                = "fizu-nic"
#   location            = data.azurerm_resource_group.fizu.location
#   resource_group_name = data.azurerm_resource_group.fizu.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.fizu.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_linux_virtual_machine" "fizu" {
#   name                            = "japhme"
#   resource_group_name             = data.azurerm_resource_group.fizu.name
#   location                        = data.azurerm_resource_group.fizu.location
#   size                            = "Standard_D2s_v3"
#   admin_username                  = "adminuser"
#   admin_password                  = "fitme@411"
#   disable_password_authentication = false
#   network_interface_ids = [
#     azurerm_network_interface.fizu.id,
#   ]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
# }


# resource "azurerm_resource_group" "okwara" {
#   name     = "izunna-rg"
#   location = "east us"
# }

# resource "azurerm_virtual_network" "network" {
#   name                = "terraformfizu-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.okwara.location
#   resource_group_name = azurerm_resource_group.okwara.name
# }

# resource "azurerm_subnet" "okwara" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.okwara.name
#   virtual_network_name = azurerm_virtual_network.network.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "okwara" {
#   name                = "okwara-nic"
#   location            = azurerm_resource_group.okwara.location
#   resource_group_name = azurerm_resource_group.okwara.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.okwara.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_linux_virtual_machine" "okwara" {
#   name                            = "okwara-vm"
#   resource_group_name             = azurerm_resource_group.okwara.name
#   location                        = azurerm_resource_group.okwara.location
#   size                            = "Standard_F2"
#   admin_username                  = "adminuser"
#   admin_password                  = "fizume@3111"
#   disable_password_authentication = false
#   network_interface_ids = [
#     azurerm_network_interface.okwara.id,
#   ]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
# }