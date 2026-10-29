variable "aws_region" {
  description = "Region de AWS"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
  default     = "nexoandes"
}

variable "vpc_cidr" {
  description = "CIDR de la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR de la Subnet"
  type        = string
  default     = "10.0.1.0/24"
}variable "student_name" {
  description = "Nombre del estudiante"
  type        = string
}

variable "student_number" {
  description = "Numero de lista del estudiante"
  type        = number
}