
resource "azurerm_resource_group" "rg" {
  name     = "rg-function-dt"
  location = "australiasoutheast"
}

resource "azurerm_storage_account" "sa" {
  name                     = "stfuncdt98765"   # must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# ✅ CONSUMPTION PLAN (Y1)
resource "azurerm_service_plan" "plan" {
  name                = "asp-func-dt"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  os_type  = "Linux"
  sku_name = "Y1"          # ✅ Consumption
}

resource "azurerm_linux_function_app" "func" {
  name                = "func-dt-demo-001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  service_plan_id = azurerm_service_plan.plan.id

  storage_account_name       = azurerm_storage_account.sa.name
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key

  site_config {
    application_stack {
      python_version = "3.9"
    }
  }

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "python"
  }
}

