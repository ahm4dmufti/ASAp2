terraform {
  required_version = ">= 1.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateasa2026"
    container_name       = "tfstate"
    key                  = "project2.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}