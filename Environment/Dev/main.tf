module "rgmanu" {
  source = "../../Module/Azurerm_resource_group"
  rg_001 = var.rgnmao
}
module "vnet" {
  depends_on = [module.rgmanu]
  source     = "../../Module/Azurerm_networking"
  vnet_001   = var.vnetnamo

}
module "pip" {
  depends_on = [module.rgmanu]
  source     = "../../Module/Azurerm_pip"
  pip_name   = var.pipnamo

}
module "key_vault" {
  depends_on = [module.rgmanu]
  source     = "../../Module/Azurerm_keyvault"
  kv         = var.keyvault

}
module "nic" {
  depends_on = [module.rgmanu, module.vnet, module.pip]
  source     = "../../Module/Azure_NIC"
  nic_001    = var.nic_002

}
module "vm" {
  depends_on = [module.rgmanu, module.nic]
  source     = "../../Module/Azurerm_vm"
  vms        = var.vmnamo

}
module "mysql" {
  depends_on = [module.rgmanu, module.key_vault]
  source     = "../../Module/sql_server"
  mysql      = var.sql_server
}
module "sqldatabase" {
  depends_on  = [module.mysql, module.rgmanu]
  source      = "../../Module/sql_database"
  sqldatabase = var.database
}

