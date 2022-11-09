terraform {
  required_version = "1.3.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.30.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "bookyz-stage" {
  name     = "bookyz-stage"
  location = var.azure_region
}
