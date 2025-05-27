variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
}

variable "instance_type" {
  description = "EC2 instance type (e.g. t3.micro)"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where instances will be deployed"
  type        = string
}

variable "env" {
  description = "Environment name (e.g. dev, qa, prod)"
  type        = string
}