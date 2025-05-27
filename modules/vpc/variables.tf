variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone to deploy subnet"
  type        = string
}

variable "env" {
  description = "Environment name (e.g. dev, qa, prod)"
  type        = string
}