terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.80.0"
    }
  }
}


provider "azurerm" {
  subscription_id = "720875b8-30ce-41cc-9924-59ad258338a2"
  features {}
}