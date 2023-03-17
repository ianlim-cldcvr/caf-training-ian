storage_accounts = {
  level0 = {
    name                     = "<CHANGE THIS>" # use desired name, no spaces or special characters
    resource_group_key       = "level0"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = {
      ## Those tags must never be changed after being set as they are used by the rover to locate the launchpad and the tfstates.
      # Only adjust the environment value at creation time
      tfstate = "level0" # do not change
      # inherit tag: agency-code from global settings
      # inherit tags: project-code and env from resource group
      purpose = "CAF base setup level 0 storage account" # can be changed
    }
    blob_properties = {
      versioning_enabled                = true
      container_delete_retention_policy = 7
      delete_retention_policy           = 7
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }

    # network = {
    #   bypass = ["None"]
    #   subnets = {
    #     subnet1 = {
    #       # devops subnet id
    #       remote_subnet_id = ""
    #     }
    #   }
    # }

    # diagnostic_profiles = {
    #   operations = {
    #     definition_key   = "storage_account"
    #     destination_type = "log_analytics"
    #     destination_key  = "central_logs"
    #   }
    # }
  }

  level1 = {
    name                     = "<CHANGE THIS>" # use desired name, no spaces or special characters
    resource_group_key       = "level1"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = {
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      tfstate = "level1" # do not change
      # inherit tag: agency-code from global settings
      # inherit tags: project-code and env from resource group
      purpose = "CAF base setup level 1 storage account" # can be changed
    }
    blob_properties = {
      versioning_enabled                = true
      container_delete_retention_policy = 7
      delete_retention_policy           = 7
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }

    # network = {
    #   bypass = ["None"]
    #   subnets = {
    #     subnet1 = {
    #       # devops subnet id
    #       remote_subnet_id = ""
    #     }
    #   }
    # }

    # diagnostic_profiles = {
    #   operations = {
    #     definition_key   = "storage_account"
    #     destination_type = "log_analytics"
    #     destination_key  = "central_logs"
    #   }
    # }
  }

  level2 = {
    name                     = "<CHANGE THIS>" # use desired name, no spaces or special characters
    resource_group_key       = "level2"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = {
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      tfstate = "level2" # do not change
      # inherit tag: agency-code from global settings
      # inherit tags: project-code and env from resource group
      purpose = "CAF base setup level 2 storage account" # can be changed
    }
    blob_properties = {
      versioning_enabled                = true
      container_delete_retention_policy = 7
      delete_retention_policy           = 7
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }

    # network = {
    #   bypass = ["None"]
    #   subnets = {
    #     subnet1 = {
    #       # devops subnet id
    #       remote_subnet_id = ""
    #     }
    #   }
    # }

    # diagnostic_profiles = {
    #   operations = {
    #     definition_key   = "storage_account"
    #     destination_type = "log_analytics"
    #     destination_key  = "central_logs"
    #   }
    # }
  }
}