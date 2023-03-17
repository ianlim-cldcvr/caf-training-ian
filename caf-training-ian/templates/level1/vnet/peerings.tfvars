vnet_peerings_v1 = {
  vnet1_TO_vnet2 = {
    name = "bastion-TO-app"
    from = {
      vnet_key = "vnet1"
    }
    to = {
      vnet_key = "vnet2"
    }
  }

  vnet2_TO_vnet1 = {
    name = "app-TO-bastion"
    from = {
      vnet_key = "vnet2"
    }
    to = {
      vnet_key = "vnet1"
    }
  }
}