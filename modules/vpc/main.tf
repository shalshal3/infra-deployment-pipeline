resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "$(var.env)-vpc"
  }
}

resource "aws_subnet" "myvpc" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.sn_cidr
  availability_zone = var.subnet_az

  tags = {
    Name = "$(var.env) -sn"
  }
}

output "subnet_id" {
  value       = ""
  description = "the sn which my ec2 will be created"
}
