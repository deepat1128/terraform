output "postgres_connection_string" {
  value = "postgres://${azurerm_postgresql_flexible_server.postgres_server.administrator_login}:${azurerm_postgresql_flexible_server.postgres_server.administrator_password}@${azurerm_postgresql_flexible_server.postgres_server.fqdn}:5432/${azurerm_postgresql_flexible_server_database.db.name}"
}


