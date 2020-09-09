output "azurerm_container_registry_name" {
  description = "The name of container registry."
  value = azurerm_container_registry.default.name
}

output "azurerm_container_registry_location" {
  description = "The location of container registry"
  value = azurerm_container_registry.default.location
}

output "azurerm_container_registry_sku" {
  description = "The SKU of container registry"
  value = azurerm_container_registry.default.sku
}

