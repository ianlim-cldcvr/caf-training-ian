private_dns = {
  dns_sa = {
    name               = "privatelink.blob.core.windows.net" # must be this name
    resource_group_key = "app_rg1"

    vnet_links = {
      central_devops_vnet = {
        name               = "app-vnet"
        virtual_network_id = "<VNET_RESOURCE_ID>"
      }
    }
  }
}