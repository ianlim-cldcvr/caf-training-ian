landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "vnet"
  level               = "level2"
  key                 = "app"
  tfstates = {
    vnet = {
      level   = "lower"
      tfstate = "vnet.tfstate"
    }
  }
}

resource_groups = {
  app_rg1 = {
    name = "<CHANGE THIS>"
    tags = {
      level        = "level2"
      project-code = "caf_training"
      purpose      = "CAF App level 2 resource group"
    }
  }
}