output "postgres_connection_string" {
  value = format(
    "Host=%s;Database=%s;Username=%s;Password=%s;Port=5432;",
    azurerm_postgresql_flexible_server.postgres_server.fqdn,
    azurerm_postgresql_flexible_server_database.db.name,
    azurerm_postgresql_flexible_server.postgres_server.administrator_login,
    azurerm_postgresql_flexible_server.postgres_server.administrator_password
  )
}




