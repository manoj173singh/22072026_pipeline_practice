
# #  for_each = lookup(each.value,"ip_configuration",{})
# resource "azurerm_network_interface" "nic" {
#   for_each            = var.nic_001
#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name

#   ip_configuration {
#        name = each.value.ip_config_name          
#       private_ip_address_allocation = each.value.private_ip_address_allocation
#       subnet_id                     = data.azurerm_subnet.subnet[each.key].id
#       public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
#     }
#   tags = each.value.tags
# }

resource "azurerm_network_interface" "nic" {
  for_each            = var.nic_001
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  dynamic "ip_configuration" {
    for_each = each.value.ip_config
    content {
      name                          = ip_configuration.value.ip_config_name
      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
      subnet_id                     = data.azurerm_subnet.subnet[each.key].id
      public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
    }
  }

  tags = each.value.tags
}

  