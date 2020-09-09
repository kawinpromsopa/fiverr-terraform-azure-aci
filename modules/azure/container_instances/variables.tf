#
# Resource group
#
variable "location" {
  type = string
  description = "The location to deploy the resource group in to."
  default = "UK South"
}

variable "name" {
  type = string
  description = "The name of the resource group."
  default = "terraformed"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

#
# Container instances
#
variable "aci" {
    type = map(object({
        name                = string,
        location            = string,
        resource_group_name = string,
        ip_address_type     = string,
        dns_name_label      = string,
        os_type             = string,
        containers          = map(object({
            image     = string,
            cpu       = number,
            memory    = number,
            ports               = list(object({
                port = number
                protocol = string
            }))
        }))
    }))
}
