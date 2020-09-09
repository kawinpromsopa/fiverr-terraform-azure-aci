provider "azurerm" {
  version = ">= 2.2.0"
  features {}
}

terraform {
  required_version = ">= 0.12.0"
}

resource "azurerm_container_group" "default" {
    for_each            = var.aci
    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    ip_address_type     = each.value.ip_address_type
    dns_name_label      = each.value.dns_name_label
    os_type             = each.value.os_type
    restart_policy      = each.value.restart_policy
    tags                = each.value.tags 

    dynamic "container" {
        for_each = each.value.containers
        iterator = i

        content {
            name   = i.key
            image  = i.value.image
            cpu    = i.value.cpu
            memory = i.value.memory

            dynamic "ports" {
                for_each = i.value.ports
                iterator = p

                content {
                    port     = p.value.port
                    protocol = p.value.protocol
                }
            }
        }
    }
}
