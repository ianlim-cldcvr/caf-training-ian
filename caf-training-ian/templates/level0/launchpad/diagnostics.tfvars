# diagnostics_destinations = {
#   log_analytics = {
#     central_logs = {
#       # set below to LAW resource id
#       log_analytics_resource_id = "/subscriptions/3f416113-06a5-4a29-ac0a-44352759a919/resourceGroups/gcci-agency-law/providers/Microsoft.OperationalInsights/workspaces/gcci-agency-workspace"
#       # set below to LAW workspace id 
#       log_analytics_workspace_id = "ab666363-fd48-490e-b937-2d6ee2b41662"
#     }
#   }
# }

#
# Define a set of settings for the various type of Azure resources
#
diagnostics_definition = {
  log_analytics = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Audit", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  storage_account = {
    name = "operational_logs_and_metrics"
    categories = {
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Transaction", true, false, 7],
        ["Capacity", false, false, 7],
      ]
    }
  }

  default_all = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  keyvault_all = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, false, 7],
        ["AzurePolicyEvaluationDetails", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  bastion_host = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["BastionAuditLogs", true, false, 7],
      ]
    }
  }

  networking_all = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["VMProtectionAlerts", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  public_ip_address = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["DDoSProtectionNotifications", true, false, 7],
        ["DDoSMitigationFlowLogs", true, false, 7],
        ["DDoSMitigationReports", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  network_security_group = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["NetworkSecurityGroupEvent", true, false, 7],
        ["NetworkSecurityGroupRuleCounter", true, false, 7],
      ]
    }
  }

  network_interface_card = {
    name = "operational_logs_and_metrics"
    categories = {
      # log = [
      #   # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
      #   ["AuditEvent", true, false, 7],
      # ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  azure_container_registry = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ContainerRegistryRepositoryEvents", true, false, 7],
        ["ContainerRegistryLoginEvents", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  azure_api_management = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["GatewayLogs", true, false, 7],
        ["WebSocketConnectionLogs", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  azure_application_gateway = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ApplicationGatewayAccessLog", true, false, 7],
        ["ApplicationGatewayPerformanceLog", true, false, 7],
        ["ApplicationGatewayFirewallLog", true, false, 7]
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  azure_kubernetes_cluster = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["kube-apiserver", true, false, 7],
        ["kube-audit", true, false, 7],
        ["kube-audit-admin", true, false, 7],
        ["kube-controller-manager", true, false, 7],
        ["kube-scheduler", true, false, 7],
        ["cluster-autoscaler", true, false, 7],
        ["guard", true, false, 7],
        ["cloud-controller-manager", true, false, 7],
        ["csi-azuredisk-controller", true, false, 7],
        ["csi-azurefile-controller", true, false, 7],
        ["csi-snapshot-controller", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  azure_redis_caches = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ConnectedClientList", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  azure_batch_account = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        ["ServiceLogs", true, false, 7]
      ]
      metric = [
        ["AllMetrics", true, false, 7]
      ]
    }
  }

  azure_backup = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["CoreAzureBackup", true, true, 7],
        ["AddonAzureBackupAlerts", true, true, 7],
        ["AddonAzureBackupJobs", true, true, 7],
        ["AddonAzureBackupPolicy", true, true, 7],
        ["AddonAzureBackupProtectedInstance", true, true, 7],
        ["AddonAzureBackupStorage", true, true, 7],
      ]
      metric = [
        #["AllMetrics", 60, True],
      ]
    }
  }

  azure_site_recovery = {
    name                           = "operational_logs_and_metrics"
    log_analytics_destination_type = "Dedicated"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AzureBackupReport", true, true, 7],
        ["CoreAzureBackup", true, true, 7],
        ["AddonAzureBackupAlerts", true, true, 7],
        ["AddonAzureBackupJobs", true, true, 7],
        ["AddonAzureBackupPolicy", true, true, 7],
        ["AddonAzureBackupProtectedInstance", true, true, 7],
        ["AddonAzureBackupStorage", true, true, 7],
        ["AzureSiteRecoveryJobs", true, true, 7],
        ["AzureSiteRecoveryEvents", true, true, 7],
        ["AzureSiteRecoveryReplicatedItems", true, true, 7],
        ["AzureSiteRecoveryReplicationStats", true, true, 7],
        ["AzureSiteRecoveryRecoveryPoints", true, true, 7],
        ["AzureSiteRecoveryReplicationDataUploadRate", true, true, 7],
        ["AzureSiteRecoveryProtectedDiskDataChurn", true, true, 30],
      ]
      metric = [
        #["AllMetrics", 60, True],
      ]
    }
  }

  azure_automation = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["JobLogs", true, true, 30],
        ["JobStreams", true, true, 30],
        ["DscNodeStatus", true, true, 30],
      ]
      metric = [
        # ["Category name",  "Metric Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }
  }

  event_hub_namespace = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ArchiveLogs", true, false, 7],
        ["OperationalLogs", true, false, 7],
        ["AutoScaleLogs", true, false, 7],
        ["KafkaCoordinatorLogs", true, false, 7],
        ["KafkaUserErrorLogs", true, false, 7],
        ["EventHubVNetConnectionEvent", true, false, 7],
        ["CustomerManagedKeyUserLogs", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  compliance_all = {
    name = "compliance_logs"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, true, 365],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", false, false, 7],
      ]
    }
  }

  mssql_db = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AutomaticTuning", true, false, 7],
        ["Blocks", true, false, 7],
        ["DatabaseWaitStatistics", true, false, 7],
        ["Deadlocks", true, false, 7],
        ["DevOpsOperationsAudit", true, false, 7],
        ["QueryStoreRuntimeStatistics", true, false, 7],
        ["QueryStoreWaitStatistics", true, false, 7],
        ["SQLInsights", true, false, 7],
        ["SQLSecurityAuditEvents", true, false, 7],
        ["Timeouts", true, false, 7],
        ["Errors", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Basic", true, false, 7],
        ["InstanceAndAppAdvanced", true, false, 7],
        ["WorkloadManagement", true, false, 7],
      ]
    }
  }

  siem_all = {
    name = "siem"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, true, 0],
      ]

      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", false, false, 0],
      ]
    }
  }

  subscription_operations = {
    name = "subscription_operations"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)"]
        ["Administrative", true],
        ["Security", true],
        ["ServiceHealth", true],
        ["Alert", true],
        ["Policy", true],
        ["Autoscale", true],
        ["ResourceHealth", true],
        ["Recommendation", true],
      ]
    }
  }

  subscription_siem = {
    name = "activity_logs_for_siem"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)"]
        ["Administrative", false],
        ["Security", true],
        ["ServiceHealth", false],
        ["Alert", false],
        ["Policy", true],
        ["Autoscale", false],
        ["ResourceHealth", false],
        ["Recommendation", false],
      ]
    }
  }
}