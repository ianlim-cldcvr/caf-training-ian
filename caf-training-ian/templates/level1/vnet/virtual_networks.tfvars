vnets = {
  vnet1 = {
    resource_group_key = "vnet_rg1"
    vnet = {
      name          = "bastion-vnet"
      address_space = ["10.100.100.0/24"]
    }
    subnets = {
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" # must be named AzureBastionSubnet
        cidr    = ["10.100.100.0/26"]
        nsg_key = "azure_bastion_nsg"
      }
    }
  }

  vnet2 = {
    resource_group_key = "vnet_rg1"
    vnet = {
      name          = "app-vnet"
      address_space = ["10.110.100.0/24"]
    }
    subnets = {
      exampleSubnet = {
        name = "example-subnet"
        cidr = ["10.110.100.0/26"]
      }
    }
  }

}