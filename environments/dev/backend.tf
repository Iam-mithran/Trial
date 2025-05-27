terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket         = "lwm-terraform-backend"   # 🔁 Replace with your actual bucket name
    key            = "env/dev/terraform.tfstate"   
    region         = "ap-southeast-1"                  # 🔁 Change based on your AWS region
    dynamodb_table = "terraform-locks"             # Optional but recommended for state locking
  }
}

provider "aws" {
  region = var.aws_region
}