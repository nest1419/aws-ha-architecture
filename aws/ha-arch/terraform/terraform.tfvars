project             = "ark"
region              = "us-east-1"
azs                 = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
key_name             = "ark-key"

# VPC desplegada
vpc_id = "vpc-035ccae029397759d"

# Subnets privadas (para RDS)
db_subnet_ids = [
  "subnet-030c81018b3a0b482",  # aws-ha-lab-private-2
  "subnet-06fb42ba3dd406976"   # aws-ha-lab-private-1
]

private_subnet_ids = [
  "subnet-030c81018b3a0b482",
  "subnet-06fb42ba3dd406976"
]

# Credenciales para la base de datos
db_username = "admin"
db_password = "ArkDbSecure2024!"

# Parámetros para la base de datos
db_instance_type        = "db.t3.micro"
db_name                 = "arkdb"
allocated_storage       = 20
engine_version          = "8.0"
multi_az                = true
backup_retention_period = 7
deletion_protection     = true
