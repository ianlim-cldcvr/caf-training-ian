virtual_subnets = {
  AppSubnet = {
    name                                           = "app-subnet"
    cidr                                           = ["10.110.100.64/26"]
    nsg_key                                        = "app_nsg"
    enforce_private_link_endpoint_network_policies = "true"
    service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
    vnet = {
      id = "<VNET_RESOURCE_ID>"
    }
  }
}