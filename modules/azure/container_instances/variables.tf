variable "aci" {
    type = map(object({
        name                = string,
        location            = string,
        resource_group_name = string,
        ip_address_type     = string,
        dns_name_label      = string,
        os_type             = string,
        restart_policy      = string,
        tags                = any

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
