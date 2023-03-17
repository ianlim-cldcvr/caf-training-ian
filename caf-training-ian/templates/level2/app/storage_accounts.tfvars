storage_accounts = {
  sa1 = {
    name                     = "<CHANGE THIS>" # use desired name, no spaces or special characters
    resource_group_key       = "app_rg1"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    min_tls_version          = "TLS1_2"
    allow_blob_public_access = false
    is_hns_enabled           = false

    private_endpoints = {
      sa_pl = {
        name               = "sa-pep"
        resource_group_key = "app_rg1"
        subnet_id          = "<SUBNET_RESOURCE_ID>"

        private_service_connection = {
          name                 = "sa-psc"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }

        private_dns = {
          zone_group_name = "sa-default"
          keys            = ["dns_sa"]
        }
      }
    }
  }
}