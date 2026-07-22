rgnmao = {
  rg1 = {
    name       = "rgsuraj"
    location   = "centralindia"
    managed_by = "terraform"
    tags = {
      ownner      = "manoj"
      enviornment = "dev"
  } }
}

vnetnamo = {
  vnet1 = {
    name                = "vnetsuraj"
    resource_group_name = "rgsuraj"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]

    tags = {
      owner       = "manoj"
      enviornment = "dev"
    }

    subnets = {
      frontend = {
        name             = "frontendsubnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      backend = {
        name             = "backendsubnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}

pipnamo = {
  pip1 = {
    name                = "frontendpip"
    resource_group_name = "rgsuraj"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      enviornment = "dev"
      owner       = "manoj"
    }
  }
  pip2 = {
    name                = "backendpip"
    resource_group_name = "rgsuraj"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      enviornment = "dev"
      ownner      = "manoj"
    }
  }
}


keyvault = {
  kv01 = {
    name                        = "kvnamo45"
    location                    = "centralindia"
    resource_group_name         = "rgsuraj"
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
    sku_name                    = "standard"
  }
}

nic_002 = {
  frontend = {
    name                = "frontendnic"
    location            = "centralindia"
    resource_group_name = "rgsuraj"
    subnet_name         = "frontendsubnet"
    pip_name            = "frontendpip"
    vnet_name           = "vnetsuraj"
    ip_config = {
      ip1 = {
        ip_config_name                = "ipconfig1"
        private_ip_address_allocation = "Dynamic"
      }
    }

    tags = {
      environment = "dev"
      owner       = "manoj"
    }
  }
  backend = {
    name                = "backendnic"
    location            = "centralindia"
    resource_group_name = "rgsuraj"
    subnet_name         = "backendsubnet"
    pip_name            = "backendpip"
    vnet_name           = "vnetsuraj"
    ip_config = {
      ip1 = {
        ip_config_name                = "ipconfig1"
        private_ip_address_allocation = "Dynamic"
      }
    }

    tags = {
      environment = "dev"
      owner       = "manoj"
    }
  }
}

vmnamo = {
  frontendvm = {
    vm_name                         = "frontendvm"
    resource_group_name             = "rgsuraj"
    location                        = "centralindia"
    size                            = "Standard_F2"
    admin_username                  = "devopsadmin"
    admin_password                  = "devops@7341"
    disable_password_authentication = false
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
    nic_name                        = "surajnic"

  }
  backendvm = {
    vm_name                         = "backendvm"
    resource_group_name             = "rgsuraj"
    location                        = "centralindia"
    size                            = "Standard_F2"
    admin_username                  = "devopsadmin"
    admin_password                  = "devops@7341"
    disable_password_authentication = false
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
    nic_name                        = "surajnic"

  }
}
sql_server = {
  sql1 = {
    sql_name                     = "surajsql"
    resource_group_name          = "rgsuraj"
    location                     = "centralindia"
    version                      = "12.0"
    administrator_login          = "devopsadmin"
    administrator_login_password = "devops@7341"
    login_username               = "devopsadmin"
    tags = {
      environment = "dev"
      owner       = "manoj"
    }
  }
}
database = {
  sqldata1 = {
    sqldatabase_name    = "surajsqldata"
    resource_group_name = "rgsuraj"
    location            = "centralindia"
    server_name         = "surajsql"
    collation           = "SQL_Latin1_General_CP1_CI_AS"
    license_type        = "LicenseIncluded"
    max_size_gb         = 2
    sku_name            = "S0"
    enclave_type        = "VBS"
    tags = {
      environment = "dev"
      owner       = "manoj"
    }
  }
}
