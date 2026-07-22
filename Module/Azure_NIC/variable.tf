variable "nic_001" {
   description = "creating nic"
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      subnet_name = string
      pip_name = string
      vnet_name = string
    ip_config = map(object({
      ip_config_name             = string
      private_ip_address_allocation = string
      
    }))
    tags = map(string)
  }))
}
# variable "subnet" {
#     type = map(object({
#       subnet_name = string
#       vnet_name = string
#       resource_group_name = string
#     }))
  
# }
# variable "pip" {
#     type = map(object({
      
#       pip_name = string
#       resource_group_name = string
#     }))
  
# }


# variable "nic_001" {
#     type = map(object({
#         subnet_name = string
#         vnet_name = string
#         resource_group_name = string
#         }))
# }
# variable "nic_001" {
#     type = map(object({
#       pip_name =  string
#       resource_group_name = string
#     }))
  
# }

