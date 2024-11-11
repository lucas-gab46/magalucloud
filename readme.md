# Módulo PostgreSQL Sobrenatural

Este módulo provisiona uma instância do PostgreSQL na Magalu Cloud com configurações automáticas.

## Uso

```hcl
module "my_postgres" {
  source         = "./modules/postgres"
  instance_name  = "my-db-instance"
  instance_class = "db.t3.micro"
  storage_size   = 20
  database_name  = "mydatabase"
  db_user        = "admin"
  db_password    = "supersecretpassword"
  environment    = "dev"
}
