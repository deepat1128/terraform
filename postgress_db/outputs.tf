output "postgres_connection_string" {
  value = <<EOT
Host=${azurerm_postgresql_flexible_server.postgres_server.fqdn}
Database=${azurerm_postgresql_flexible_server_database.db.name}
Username=${azurerm_postgresql_flexible_server.postgres_server.administrator_login}
Password=${azurerm_postgresql_flexible_server.postgres_server.administrator_password}
Port=5432
EOT
}

