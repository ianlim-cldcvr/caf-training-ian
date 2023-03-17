keyvaults = {
  level0 = {
    name                = "<CHANGE THIS>" # use desired name, keyvault name char limit: 24
    resource_group_key  = "level0"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level0" # do not change
      # inherit tag: agency-code from global settings
      # inherit tags: project-code and env from resource group
      purpose = "CAF base setup level 0 keyvault" # can be changed
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

    # network = {
    #   bypass         = "AzureServices"
    #   default_action = "Deny"
    #   # ip_rules       = [""]
    #   subnets = {
    #     #add multiple subnets by extending this block. You can reference remote subnets by using subnet_id
    #     subnet1 = {
    #       subnet_id = ""
    #     }
    #   }
    # }

    # diagnostic_profiles = {
    #   operations = {
    #     definition_key   = "keyvault_all"
    #     destination_type = "log_analytics"
    #     destination_key  = "central_logs"
    #   }
    # }
  }

  level1 = {
    name                = "<CHANGE THIS>" # use desired name, keyvault name char limit: 24
    resource_group_key  = "level1"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level1" # do not change
      # inherit tag: agency-code from global settings
      # inherit tags: project-code and env from resource group
      purpose = "CAF base setup level 1 keyvault" # can be changed
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

    # network = {
    #   bypass         = "AzureServices"
    #   default_action = "Deny"
    #   # ip_rules       = [""]
    #   subnets = {
    #     #add multiple subnets by extending this block. You can reference remote subnets by using subnet_id
    #     subnet1 = {
    #       subnet_id = ""
    #     }
    #   }
    # }

    # diagnostic_profiles = {
    #   operations = {
    #     definition_key   = "keyvault_all"
    #     destination_type = "log_analytics"
    #     destination_key  = "central_logs"
    #   }
    # }
  }

  level2 = {
    name                = "<CHANGE THIS>" # use desired name, keyvault name char limit: 24
    resource_group_key  = "level2"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level2" # do not change
      # inherit tag: agency-code from global settings
      # inherit tags: project-code and env from resource group
      purpose = "CAF base setup level 2 keyvault" # can be changed
    }

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

    # network = {
    #   bypass         = "AzureServices"
    #   default_action = "Deny"
    #   # ip_rules       = [""]
    #   subnets = {
    #     #add multiple subnets by extending this block. You can reference remote subnets by using subnet_id
    #     subnet1 = {
    #       subnet_id = ""
    #     }
    #   }
    # }

    # diagnostic_profiles = {
    #   operations = {
    #     definition_key   = "keyvault_all"
    #     destination_type = "log_analytics"
    #     destination_key  = "central_logs"
    #   }
    # }
  }
}