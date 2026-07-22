variable "vnet_001" {
  description = "creating vnet"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    # dns_servers         = list(string)
    tags                = map(string)


    subnets = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}
