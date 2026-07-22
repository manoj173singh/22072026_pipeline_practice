data "azurerm_client_config" "current" {}

resource "azurerm_mssql_server" "mysql" {
    for_each = var.mysql
  name                         = each.value.sql_name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password

  azuread_administrator {
    login_username = each.value.login_username
    object_id      = data.azurerm_client_config.current.object_id
  }

  tags = each.value.tags
}