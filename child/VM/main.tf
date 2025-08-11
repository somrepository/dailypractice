resource "azurerm_network_interface" "vmnic" {
    for_each = var.linixvm
  name                = each.value.nicname
  location            = each.value.niclocation
  resource_group_name = each.value.rgname

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datasubnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.datapublicip[each.key].id
  }
}

resource "azurerm_linux_virtual_machine" "linixvm" {
    for_each = var.linixvm
  name                = each.value.vmname
  resource_group_name = each.value.rgname
  location            = each.value.vmlocation
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password = "Waheguru@123"
  network_interface_ids = [
    data.azurerm_network_interface.datanic[each.key].id
  ]
  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}