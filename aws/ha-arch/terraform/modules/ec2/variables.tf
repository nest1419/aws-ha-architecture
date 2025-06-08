variable "project" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "ami_id" {
  description = "AMI ID para lanzar instancias"
  type        = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  description = "Nombre del key pair"
  type        = string
}

variable "user_data" {
  description = "Script de inicialización"
  type        = string
  default     = ""
}
variable "private_subnet_ids" {
  type        = list(string)
  description = "Subnets privadas para el ASG"
}
variable "public_subnet_ids" {
  type        = list(string)
  description = "Subnets públicas para el ALB"
}
variable "enable_detailed_monitoring" {
  type        = bool
  description = "Enable detailed monitoring for EC2"
  default     = false
}
