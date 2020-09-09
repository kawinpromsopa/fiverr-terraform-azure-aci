module "aci" {
  source                = "./modules/azure/container_instances"
  aci = {
      terraform = {
          name                = "terraformed"
          location            = "uksouth"
          resource_group_name = "terraformed-rg"
          ip_address_type     = "public"
          dns_name_label      = "default_dns_terraformed"
          os_type             = "Linux"
          containers          = {
            foo = {
                image     = "microsoft/aci-helloworld:latest"
                cpu       = 1
                memory    = 1    
                ports     = [
                    {
                        port     = 80
                        protocol = "TCP"
                    },
                    {
                        port     = 443
                        protocol = "TCP"
                    }
                ] 
        }
      }
    }
  }
}
