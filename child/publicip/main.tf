
resource "azurerm_public_ip" "publicip" {
    for_each = var.publicip

  name                = each.value.publicipname
  resource_group_name = each.value.rgname
  location            = each.value.publiciplocation
  allocation_method   = "Static"

  }