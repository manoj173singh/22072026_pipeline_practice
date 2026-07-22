# variable "vms"{
#     description = "nic creating"
#     type = map(object({
#       nic_name = string
#       location = string
#       resource_group_name = string
#     }))
# }
# variable "vms"{
#     description = "data subnet creation"
#     type = map(object({
#       subnet_name = string
#       vnet_name = string
#       resource_group_name = string
#     }))
# }
# variable "pip"{
#     description = "data block pip"
#     type = map(object({
#       name = string
#       resource_group_name =string
#     }))

variable "vms"{
    description = "craeting vm"
    type = map(object({
     nic_name = string
    #  subnet_name = string
    #   vnet_name = string
    #   pip_name = string
      vm_name = string
      resource_group_name = string
      location = string
      size = string
      admin_username = string
      admin_password = string
   
      disable_password_authentication = bool
      publisher = string
    offer     = string
    sku       = string
    version   = string
    }))
  
}
# variable "vms" {
#   type = map(object({
#     nic_name = string
#     resource_group_name = string
#   }))
  
# }