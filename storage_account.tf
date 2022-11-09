resource "azurerm_storage_account" "bookyz_storage_acc" {
  #checkov:skip=CKV2_AZURE_18: ####### TO BE SET ON PROD ########
  #checkov:skip=CKV2_AZURE_8: ####### TO BE SET ON PROD ########
  #checkov:skip=CKV2_AZURE_1: ####### TO BE SET ON PROD ########
  #checkov:skip=CKV_AZURE_33: ####### TO BE SET ON PROD ########
  name                      = "bookyz"
  resource_group_name       = azurerm_resource_group.bookyz-stage.name
  location                  = var.azure_region
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  min_tls_version           = "TLS1_2"
  enable_https_traffic_only = true

  network_rules {
    default_action = "Deny"
  }
}

resource "azurerm_storage_container" "iothub" {
  #checkov:skip=CKV2_AZURE_21: ####### TO BE SET ON PROD ########
  name                  = "iothub"
  storage_account_name  = azurerm_storage_account.bookyz_storage_acc.name
  container_access_type = "private"
}
