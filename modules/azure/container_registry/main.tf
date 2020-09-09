provider "azurerm" {
  version = ">= 2.2.0"
  features {}
}

terraform {
  required_version = ">= 0.12.0"
}

resource "azurerm_container_registry" "default" {
  name                     = var.name 
  resource_group_name      = var.resource_group_name 
  location                 = var.location
  sku                      = var.sku
  tags                     = var.tags
}
