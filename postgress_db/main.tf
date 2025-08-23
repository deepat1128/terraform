resource "azurerm_resource_group" "rg" {
  name     = "deepa-rg"
  location = "West Europe"
}

resource "azurerm_postgresql_flexible_server" "postgres_server" {
  name                   = "deepa-postgres"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = "psqladmin"
  administrator_password = var.admin_password
  storage_mb             = 32768
 sku_name = "GP_Standard_D2s_v3"
  version                = "13"
}

resource "azurerm_postgresql_flexible_server_database" "db" {
  name      = "deepadb"
  server_id = azurerm_postgresql_flexible_server.postgres_server.id
  collation = "en_US.utf8"
  charset   = "UTF8"
}


