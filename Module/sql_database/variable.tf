variable "sqldatabase" {
  description = "database creating"
  type = map(object({
    sqldatabase_name =string
    resource_group_name =string
    location = string
    collation = string
    license_type = string
    max_size_gb = number
    sku_name =string
    server_name =string
    enclave_type =string
    tags                = map(string)
  }))

}


