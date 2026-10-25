variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
}

variable "vpc_cidr" {
  description = "Rango de IPs para la VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "Rango de IPs para la Subnet"
  type        = string
}