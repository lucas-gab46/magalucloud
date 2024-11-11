resource "mgc_postgresql_instance" "db" {
  name              = var.instance_name
  instance_class    = var.instance_class
  storage_size      = var.storage_size
  engine            = "postgres"
  engine_version    = var.engine_version

  # Configurações adicionais
  backup_retention_days = 7
  allocated_storage      = 20
  multi_az              = true

  tags = {
    Name = var.instance_name
    Environment = var.environment
  }
}

resource "mgc_postgresql_database" "database" {
  name     = var.database_name
  instance = mgc_postgresql_instance.db.id
}

resource "mgc_postgresql_user" "user" {
  username = var.db_user
  password = var.db_password
  instance = mgc_postgresql_instance.db.id
}
