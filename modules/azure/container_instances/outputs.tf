output "azurerm_container_group_id" {
    value = [for u in azurerm_container_group.default:u.id]
}

output "azurerm_container_group_name" {
    value = [for u in azurerm_container_group.default:u.name]
}

output "azurerm_container_group_location" {
    value = [for u in azurerm_container_group.default:u.location]
}

output "azurerm_container_group_ip_address_type" {
    value = [for u in azurerm_container_group.default:u.ip_address_type]
}

output "azurerm_container_group_dns_name_label" {
    value = [for u in azurerm_container_group.default:u.fqdn]
}

output "azurerm_container_group_os_type" {
    value = [for u in azurerm_container_group.default:u.os_type]
}

output "azurerm_container_group_restart_policy" {
    value = [for u in azurerm_container_group.default:u.restart_policy]
}
