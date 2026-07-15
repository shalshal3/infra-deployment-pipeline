module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  sn_cidr = "10.0.1.0/24"
  env       = "dev"
}

module "ec2" {
  source = "../../modules/ec2"
  ami_id = "ami-01edba92f9036f76e"
  instance_type = "t3.micro"
  subnet_id = module.vpc.subnet_id
  ec2_count = 2
  env = "dev"
}
