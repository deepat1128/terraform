terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.70.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "rg-function-dt"
    storage_account_name  = "stfuncdt98765"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"  # Name of the state file
  }
}

