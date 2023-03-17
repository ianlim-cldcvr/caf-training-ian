network_security_group_definition = {
  azure_bastion_nsg = {
    version            = 1
    name               = "bastion-nsg"
    resource_group_key = "vnet_rg1"

    # https://learn.microsoft.com/en-us/azure/bastion/bastion-nsg#apply 
    nsg = [
      {
        name                       = "AllowFromInternet"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from internet"
        destination_address_prefix = "*"
        destination_port_range     = "443"
        direction                  = "Inbound"
        priority                   = 120
        protocol                   = "Tcp"
        source_address_prefix      = "Internet"
        source_port_range          = "*"
      },
      {
        name                       = "AllowFromGatewayManager"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from azure bastion control plane"
        destination_address_prefix = "*"
        destination_port_range     = "443"
        direction                  = "Inbound"
        priority                   = 130
        protocol                   = "Tcp"
        source_address_prefix      = "GatewayManager"
        source_port_range          = "*"
      },
      {
        name                       = "AllowFromAzureLoadBalancer"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from azure load balancer"
        destination_address_prefix = "*"
        destination_port_range     = "443"
        direction                  = "Inbound"
        priority                   = 140
        protocol                   = "Tcp"
        source_address_prefix      = "AzureLoadBalancer"
        source_port_range          = "*"
      },
      {
        name                       = "AllowFromBastionDataPlane"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from azure bastion data plane"
        destination_address_prefix = "VirtualNetwork"
        destination_port_ranges    = ["8080", "5701"]
        direction                  = "Inbound"
        priority                   = 150
        protocol                   = "*"
        source_address_prefix      = "VirtualNetwork"
        source_port_range          = "*"
      },
      {
        name                       = "DenyAllInbound"
        resource_group_key         = "vnet_rg1"
        access                     = "Deny"
        description                = "Deny all inbound to bastion"
        destination_address_prefix = "*"
        destination_port_range     = "*"
        direction                  = "Inbound"
        priority                   = 4096
        protocol                   = "*"
        source_address_prefix      = "*"
        source_port_range          = "*"
      },
      {
        name                       = "AllowBastionToSshRdp"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from bastion via SSH, RDP"
        destination_address_prefix = "VirtualNetwork"
        destination_port_ranges    = ["22", "3389"]
        direction                  = "Outbound"
        priority                   = 400
        protocol                   = "*"
        source_address_prefix      = "*"
        source_port_range          = "*"
      },
      {
        name                       = "AllowBastionToAzureCloud"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from bastion to azure public endpoints"
        destination_address_prefix = "AzureCloud"
        destination_port_range     = "443"
        direction                  = "Outbound"
        priority                   = 401
        protocol                   = "Tcp"
        source_address_prefix      = "*"
        source_port_range          = "*"
      },
      {
        name                       = "AllowBastionToDataPlane"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from bastion to azure bastion data plane"
        destination_address_prefix = "VirtualNetwork"
        destination_port_ranges    = ["8080", "5701"]
        direction                  = "Outbound"
        priority                   = 402
        protocol                   = "*"
        source_address_prefix      = "VirtualNetwork"
        source_port_range          = "*"
      },
      {
        name                       = "AllowBastionToSessionCertValidation"
        resource_group_key         = "vnet_rg1"
        access                     = "Allow"
        description                = "Allow from bastion to internet for session, cert validation"
        destination_address_prefix = "Internet"
        destination_port_range     = "80"
        direction                  = "Outbound"
        priority                   = 403
        protocol                   = "*"
        source_address_prefix      = "*"
        source_port_range          = "*"
      },
      {
        name                       = "DenyAllOutBound"
        resource_group_key         = "vnet_rg1"
        access                     = "Deny"
        description                = "Deny all outbound from bastion"
        destination_address_prefix = "*"
        destination_port_range     = "*"
        direction                  = "Outbound"
        priority                   = 4095
        protocol                   = "*"
        source_address_prefix      = "*"
        source_port_range          = "*"
      }
    ]
  }

  app_nsg = {
    version            = 1
    name               = "app-nsg"
    resource_group_key = "vnet_rg1"
  }
}
