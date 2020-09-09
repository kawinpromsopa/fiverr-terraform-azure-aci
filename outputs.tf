# 
# resource group
#
output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.resource_group.resource_group_name
}

#
# virtual network
#
output "virtual_network_id" {
  description = "The name of the resource group"
  value       = module.virtual_network.virtual_network_id
}

output "virtual_network_name" {
  description = "The Name of the newly created virtual network"
  value       = module.virtual_network.virtual_network_name
}

output "virtual_network_location" {
  description = "The location of the newly created virtual network"
  value       = module.virtual_network.virtual_network_location
}

output "virtual_network_subnets" {
  description = "The ids of subnets created inside the newl virtual network"
  value       = module.virtual_network.virtual_network_subnets
}

#
# container registry
#
output "container_registry_name" {
  description = "The name of container registry."
  value       = module.container_registry.azurerm_container_registry_name
}

output "container_registry_location" {
  description = "The location of container registry"
  value       = module.container_registry.azurerm_container_registry_location
}

output "container_registry_sku" {
  description = "The SKU of container registry"
  value       = module.container_registry.azurerm_container_registry_sku
}

#
# container instances
#
output "Goanywhere-SFTP01_id" {
  description = "The ID of the container group"
  value       = module.container_instances_0.azurerm_container_group_id
}

output "Goanywhere-SFTP01_name" {
  description = "The name of the container group"
  value       = module.container_instances_0.azurerm_container_group_name
}

output "Goanywhere-SFTP01_location" {
  description = "The location of the container group"
  value       = module.container_instances_0.azurerm_container_group_location
}

output "Goanywhere-SFTP01_ip_address_type" {
  description = "The type ip address of the container group"
  value       = module.container_instances_0.azurerm_container_group_ip_address_type
}

output "Goanywhere-SFTP01_dns_name" {
  description = "The dns name of the container group"
  value       = module.container_instances_0.azurerm_container_group_dns_name_label
}

output "Goanywhere-SFTP01_os_type" {
  description = "The type OS of the container group"
  value       = module.container_instances_0.azurerm_container_group_os_type
}

output "Goanywhere-SFTP01_restart_policy" {
  description = "The restart policy of the container group"
  value       = module.container_instances_1.azurerm_container_group_restart_policy
}

output "Goanywhere-SFTP02_id" {
  description = "The ID of the container group"
  value       = module.container_instances_1.azurerm_container_group_id
}

output "Goanywhere-SFTP02_name" {
  description = "The name of the container group"
  value       = module.container_instances_1.azurerm_container_group_name
}

output "Goanywhere-SFTP02_location" {
  description = "The location of the container group"
  value       = module.container_instances_1.azurerm_container_group_location
}

output "Goanywhere-SFTP02_ip_address_type" {
  description = "The type ip address of the container group"
  value       = module.container_instances_1.azurerm_container_group_ip_address_type
}

output "Goanywhere-SFTP02_dns_name" {
  description = "The dns name of the container group"
  value       = module.container_instances_1.azurerm_container_group_dns_name_label
}

output "Goanywhere-SFTP02_os_type" {
  description = "The type OS of the container group"
  value       = module.container_instances_1.azurerm_container_group_os_type
}

output "Goanywhere-SFTP02_restart_policy" {
  description = "The restart policy of the container group"
  value       = module.container_instances_1.azurerm_container_group_restart_policy
}
