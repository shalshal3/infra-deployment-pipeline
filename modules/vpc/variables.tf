variable "vpc_cidr" {
  type        = string
  description = "cidr value of vpc"
}

variable "env" {
  type        = string
  description = "what env we are creating"
}

variable "sn_cidr" {
  type        = string
  description = "cidr value of sn"
}

variable "subnet_az" {
  type        = string
  description = "az value of sn"
}