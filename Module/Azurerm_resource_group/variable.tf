variable "rg_001" {
  description = "created_resource group"
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))

  }))
}
