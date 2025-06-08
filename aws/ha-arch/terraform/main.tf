provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source              = "./modules/vpc"
  project             = var.project
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                 = var.azs
}
module "ec2" {
  source         = "./modules/ec2"
  project        = var.project
  vpc_id         = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnets
  public_subnet_ids  = module.vpc.public_subnets
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  user_data      = filebase64("${path.module}/scripts/user_data.sh")
  enable_detailed_monitoring = var.enable_detailed_monitoring
}
module "rds" {
  source = "./modules/rds"

  project                  = var.project
  vpc_id                   = var.vpc_id
  db_subnet_ids            = var.private_subnet_ids
  db_instance_type         = var.db_instance_type
  db_name                  = var.db_name
  db_username              = var.db_username
  db_password              = var.db_password
  allocated_storage        = var.allocated_storage
  engine_version           = var.engine_version
  multi_az                 = var.multi_az
  backup_retention_period = var.backup_retention_period
  deletion_protection      = var.deletion_protection
}
output "ec2_asg_name" {
  description = "ASG name from EC2 module"
  value       = module.ec2.asg_name
}
