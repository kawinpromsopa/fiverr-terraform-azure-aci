variable "name" {
  description = "Specifies the name of the Container Registry. Changing this forces a new resource to be created." 
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created." 
}

variable "location" {
  description = "Azure location where to place resources"
}

variable "sku" {
  description = "The SKU name of the container registry"
  type = string
  default = "Standard"
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}
