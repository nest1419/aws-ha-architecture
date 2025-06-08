variable "enable_detailed_monitoring" {
  description = "Habilita monitoreo detallado en instancias EC2"
  type        = bool
  default     = true
}

variable "cpu_utilization_high_threshold" {
  description = "Umbral de CPU para alarma de alta utilización"
  type        = number
  default     = 70
}

variable "cpu_utilization_low_threshold" {
  description = "Umbral de CPU para alarma de baja utilización"
  type        = number
  default     = 20
}

variable "asg_name" {
  description = "Nombre del Auto Scaling Group"
  type        = string
}
