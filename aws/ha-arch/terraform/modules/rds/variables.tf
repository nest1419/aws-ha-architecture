variable "project" {}
variable "vpc_id" {}
variable "db_subnet_ids" {
  type = list(string)
}
variable "db_instance_type" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {}
variable "allocated_storage" {
  type    = number
  default = 20
}
variable "engine_version" {
  default = "8.0.35"
}
variable "multi_az" {
  default = true
}
variable "backup_retention_period" {
  default = 7
}
variable "deletion_protection" {
  default = false
}
