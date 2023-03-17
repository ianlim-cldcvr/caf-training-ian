landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "vnet"
  level               = "level2"
  key                 = "azure_bastion"
  tfstates = {
    vnet = {
      level   = "lower"
      tfstate = "vnet.tfstate"
    }
  }
}

resource_groups = {
  bastion_rg1 = {
    name = "<CHANGE THIS>"
    tags = {
      level        = "level2"
      project-code = "caf_training"
      purpose      = "CAF Azure Bastion level 2 resource group"
    }
  }
}