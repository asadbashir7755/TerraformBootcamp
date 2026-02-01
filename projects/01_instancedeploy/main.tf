variable "region" {
  description = "aws region"
  type = string
  default = "ap-south-1"
}

variable "instance_type" {
  description = "instance type"
  type = string
}

variable "instance_key" {
  description = "instance key pair"
  type = string
}

variable "ami_id" {
  description = "instance ami id"
  type = string
}

# #.....................................................................##
provider "aws" {
  region = var.region
}

resource "aws_instance" "nodeapp01" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.instance_key

tags = {
  Name = "nodeapp01"
}

}

output "public_ip" {
  value = aws_instance.nodeapp01.public_ip
}

