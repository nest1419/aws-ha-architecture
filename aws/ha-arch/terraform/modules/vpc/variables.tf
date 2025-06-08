variable "project" {
  description = "Nombre del proyecto"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR principal de la VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDR para subnets públicas"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Lista de CIDR para subnets privadas"
  type        = list(string)
}

variable "azs" {
  description = "Lista de zonas de disponibilidad"
  type        = list(string)
}