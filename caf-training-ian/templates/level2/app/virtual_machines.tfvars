virtual_machines = {
  vm1 = {
    resource_group_key = "app_rg1"
    provision_vm_agent = true

    os_type = "linux"

    # auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "kv1"

    # networking cards to attach the virtual machine
    networking_interfaces = {
      nic0 = {
        subnet_id               = "<SUBNET_RESOURCE_ID>"
        primary                 = true
        name                    = "<CHANGE THIS>"
        enable_ip_forwarding    = false
        internal_dns_name_label = "nic0"
      }
    }

    virtual_machine_settings = {
      linux = {
        name                            = "<CHANGE THIS>"
        size                            = "Standard_F2"
        admin_username                  = "adminuser"
        disable_password_authentication = true

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["nic0"]

        os_disk = {
          name                 = "os-disk"
          caching              = "ReadWrite"
          storage_account_type = "Standard_LRS"
        }

        identity = {
          type = "SystemAssigned"
        }

        source_image_reference = {
          publisher = "Canonical"
          offer     = "UbuntuServer"
          sku       = "18.04-LTS"
          version   = "latest"
        }

      }
    }

  }
}