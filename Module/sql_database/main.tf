resource "azurerm_mssql_database" "mssqldata"{
 for_each = var.sqldatabase
  name         = each.value.sqldatabase_name
  server_id    = data.azurerm_mssql_server.dataserver[each.key].id
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
  enclave_type = each.value.enclave_type

  tags =each.value.tags
  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}