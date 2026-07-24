terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "infra_rg"
    storage_account_name = "namostg123"
    container_name = "infracontainer"
    key = "rg1.tfstate"
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "80357092-9dcb-4069-b418-ce29822785dc"
  # Configuration options
}