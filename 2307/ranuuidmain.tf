terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features  {}
subscription_id= "99471ee7-edde-48da-aa61-d09de9cc9d58"
tenant_id ="ade92fc5-9491-4b2b-9303-6287ce03e817" 
}

resource "random_uuid" "test" {}

resource "azurerm_resource_group" "test" {
  name     = "${random_uuid.test.result}-rg"
  location = "Central US"
}

