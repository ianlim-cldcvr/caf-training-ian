landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "law"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "launchpad.tfstate"
    }
  }
}

resource_groups = {
  law_rg1 = {
    name = "<CHANGE THIS>"
    tags = {
      level        = "level1"
      project-code = "caf_training"
      purpose      = "CAF Log Analytics Workspace level 1 resource group"
    }
  }
}