landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "vnet"
  level               = "level2"
  key                 = "ampls"
  tfstates = {
    vnet = {
      level   = "lower"
      tfstate = "vnet.tfstate"
    }
    app = {
      level   = "current"
      tfstate = "app.tfstate"
    }
    law = {
      level   = "lower"
      tfstate = "law.tfstate"
    }
  }
}

resource_groups = {
  ampls_rg1 = {
    name = "<CHANGE THIS>"
    tags = {
      level        = "level2"
      project-code = "caf_training"
      purpose      = "CAF Azure Monitor Private Link Scope level 2 resource group"
    }
  }
}
