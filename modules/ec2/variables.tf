variable "ami_id" {
  type        = string
  description = "ami id of my ec2"
}

variable "instance_type" {
  type        = string
  description = "instance of my ec2"
}

variable "subnet_id" {
  type        = string
  description = "subnet of my ec2"
}

variable "ec2_count" {
  type        = string
  description = "count of my ec2"
}

variable "env" {
  type        = string
  description = "what env we are creating a ec2"
}