bastion_hosts = {
  bastion1 = {
    name               = "<CHANGE THIS>"
    resource_group_key = "bastion_rg1"
    vnet = {
      lz_key     = "vnet"               # remote landing zone key from landingzones.tfstates[*]
      vnet_key   = "vnet1"              # virtual network key 
      subnet_key = "AzureBastionSubnet" # subnet key 
    }
    public_ip_key = "pip1"
  }
}
