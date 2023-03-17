monitor_private_link_scope = {
  mpls1 = {
    name = "<CHANGE THIS>"

    resource_group = {
      key = "ampls_rg1"
    }

    linked_resource = {
      lz_key = "law"
      key    = "law1"
      # id     = ""
    }

    private_endpoints = {
      mpls_pl = {
        name               = "ampls-pep"
        resource_group_key = "ampls_rg1"
        lz_key             = "vnet"
        subnet_key         = "AppSubnet"

        private_service_connection = {
          name                 = "ampls-psc"
          is_manual_connection = false
          subresource_names    = ["azuremonitor"]
        }

        private_dns = {
          zone_group_name = "ampls-default"
          keys            = ["dns_monitor"]
        }
      }
    }
  }
}
