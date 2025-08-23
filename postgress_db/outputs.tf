output "postgres_connection_string" {
  value = "Host=${azurerm_postgresql_flexible_server.postgres_server.fqdn}\nDatabase=${azurerm_postgresql_flexible_server_database.db.name}\nUsername=${azurerm_postgresql_flexible_server.postgres_server.administrator_login}\nPassword=${azurerm_postgresql_flexible_server.postgres_server.administrator_password}\nPort=5432"
}


