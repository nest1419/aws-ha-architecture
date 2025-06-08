variable "project" {
  description = "Nombre del proyecto"
  type        = string
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "ami_id" {
  description = "AMI ID para las instancias EC2"
  type        = string
  default     = "ami-0953476d60561c955" # Amazon Linux 2023 (us-east-1)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Nombre del Key Pair existente en AWS"
  type        = string
}

variable "region" {
  description = "Región de AWS"
  type        = string
}

variable "vpc_id" {
  description = "ID de la VPC donde se desplegará la base de datos"
  type        = string
}

variable "db_subnet_ids" {
  description = "Lista de subnets privadas para RDS"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Lista de IDs de subnets privadas para RDS"
  type        = list(string)
}

variable "db_username" {
  description = "Nombre de usuario administrador para RDS"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Contraseña del usuario administrador para RDS"
  type        = string
  sensitive   = true
}

variable "db_instance_type" {
  description = "Tipo de instancia RDS (ej: db.t3.micro)"
  type        = string
}

variable "db_name" {
  description = "Nombre de la base de datos RDS"
  type        = string
}

variable "allocated_storage" {
  description = "Tamaño en GB del almacenamiento asignado a RDS"
  type        = number
}

variable "engine_version" {
  description = "Versión del motor RDS (ej: 8.0 para MySQL)"
  type        = string
}

variable "multi_az" {
  description = "¿La base de datos debe estar en modo Multi-AZ?"
  type        = bool
}

variable "backup_retention_period" {
  description = "Cantidad de días de retención de backups"
  type        = number
}

variable "deletion_protection" {
  description = "¿Habilitar protección contra borrado en RDS?"
  type        = bool
}
 # variable "enable_detailed_monitoring" {
 # description = "Habilita el monitoreo detallado en EC2"
 # type        = bool
 # default     = false
 # }

variable "alarm_cpu_threshold" {
  description = "Umbral de CPU para la alarma (porcentaje)"
  type        = number
  default     = 70
}
