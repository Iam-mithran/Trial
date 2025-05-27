module "vpc" {
  source              = "../../modules/vpc"
  vpc_cidr            = "10.0.0.0/16"
  subnet_cidr        = "10.0.1.0/24"
  availability_zone  = "${var.aws_region}a"
  env                 = "dev"
}

/*
module "ec2" {
  source         = "../../modules/ec2"
  instance_count = 1
  instance_type  = "t2.micro"
  ami_id         = "ami-0afc7fe9be84307e4" # Change as per region
  subnet_id      = module.vpc.subnet_id
  env            = "dev"
}

module "s3" {
  source       = "../../modules/s3"
  bucket_count = 1
  env          = "dev"
}
*/
