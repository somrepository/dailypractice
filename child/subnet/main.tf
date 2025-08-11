resource "azurerm_subnet" "subnetname" {
    for_each = var.subnetname
  name                 = each.value.subnetname
  resource_group_name  = each.value.rgname
  virtual_network_name = each.value.vnetname
  address_prefixes     = ["10.0.1.0/24"]

}
  