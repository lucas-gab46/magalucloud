variable "instance_name" {
  description = "Nome da instância do PostgreSQL"
  type        = string
}

variable "instance_class" {
  description = "Classe da instância"
  type        = string
}

variable "storage_size" {
  description = "Tamanho do armazenamento (GB)"
  type        = number
  default     = 20
}

variable "engine_version" {
  description = "Versão do PostgreSQL"
  type        = string
  default     = "14"
}

variable "database_name" {
  description = "Nome do banco de dados a ser criado"
  type        = string
}

variable "db_user" {
  description = "Nome do usuário do banco de dados"
  type        = string
}

variable "db_password" {
  description = "Senha do usuário do banco de dados"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Ambiente (dev, test, prod)"
  type        = string
}
