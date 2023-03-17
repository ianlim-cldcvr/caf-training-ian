public_ip_addresses = {
  pip1 = {
    name                    = "<CHANGE THIS>"
    resource_group_key      = "bastion_rg1"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"
  }
}