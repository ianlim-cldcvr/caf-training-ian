private_dns = {
  dns_monitor = {
    name               = "privatelink.monitor.azure.com" # must be this name
    resource_group_key = "ampls_rg1"

    vnet_links = {
      central_devops_vnet = {
        name     = "app-vnet"
        lz_key   = "vnet"
        vnet_key = "vnet2"
      }
    }
  }
}