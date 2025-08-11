resource "azurerm_virtual_network" "vnet" {
    for_each = var.vnet
  name = each.value.vnetname
  location = each.value.vnetlocation
  resource_group_name = each.value.rgname
  address_space = ["10.0.0.0/16"]
}