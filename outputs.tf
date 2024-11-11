output "db_instance_endpoint" {
  description = "Endpoint da instância do PostgreSQL"
  value       = mgc_postgresql_instance.db.endpoint
}

output "database_name" {
  description = "Nome do banco de dados"
  value       = mgc_postgresql_database.database.name
}
