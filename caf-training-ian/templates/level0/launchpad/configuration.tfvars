landingzone = {
  backend_type = "azurerm"
  level        = "level0"
  key          = "launchpad"
}

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
passthrough = true
# adds random chars at the end of the names produced by the provider
random_length = 0

# Inherit_tags defines if a resource will inherit it's resource group tags
inherit_tags = true

# Default region. When not set to a resource it will use that value
default_region = "region1"

regions = {
  region1 = "southeastasia"
}

launchpad_key_names = {
  tfstates = [
    "level0", # no need to add other levels, not in use
  ]
}

tags = {
  agency-code = "htx" # use agency-code
}

resource_groups = {
  level0 = {
    name = "<CHANGE THIS>" # use desired name
    tags = {
      level        = "level0"                                # do not change
      project-code = "caf_training"                          # use project-code
      purpose      = "CAF base setup level 0 resource group" # can be changed
    }
  }
  level1 = {
    name = "<CHANGE THIS>" # use desired name
    tags = {
      level        = "level1"                                # do not change
      project-code = "caf_training"                          # use project-code
      purpose      = "CAF base setup level 1 resource group" # can be changed
    }
  }
  level2 = {
    name = "<CHANGE THIS>" # use desired name
    tags = {
      level        = "level2"                                # do not change
      project-code = "caf_training"                          # use project-code
      purpose      = "CAF base setup level 2 resource group" # can be changed
    }
  }
}