variable "mysql" {
  description = "creation sql"
  type = map(object({
    sql_name                     = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    login_username = string
  tags = map(string)
  }))
}
