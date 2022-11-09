resource "azurerm_virtual_network" "bookyz_vnet" {
  name                = "bookyz-vnet"
  location            = var.azure_region
  resource_group_name = azurerm_resource_group.bookyz-stage.name
  address_space       = [var.bookyz_vpc_cidr]
}

resource "azurerm_subnet" "public_subnet" {
  name                 = "public-subnet"
  virtual_network_name = azurerm_virtual_network.bookyz_vnet.name
  resource_group_name  = azurerm_resource_group.bookyz-stage.name
  address_prefixes     = [var.public_subnet]
}
