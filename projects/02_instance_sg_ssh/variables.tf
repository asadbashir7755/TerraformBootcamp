variable "region" {
  description = "aws region e.g ap-south-1"
  type = string
  default = "ap-south-1"
}

variable "ami_id" {
  description = "ami id for instance"
  type = string
}

variable "instance_type" {
  description = "instance type e.g t3.micro"
  type = string
}

variable "key_name" {
  description = "key pair for instance"
  type = string
}

variable "ssh_cidr" {
  description = "ssh cidr allow for ssh"
}

