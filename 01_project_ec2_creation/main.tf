variable "ami_id" {
  description = "ami id for instance"
  type= string
}

variable "instance_type" {
  description = "instance type like t2.micro,t3.micro"
  type = string
}

variable "instancekey" {
  description = "instance key"
  type = string
  
}

variable "region" {
  description = "aws region"
  type = string
  default = "ap-south-1"
}
provider "aws" {
  region = var.region
}

resource "aws_instance" "nodeapp01" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.instancekey
}

output "public_ip" {
  description = "public ip of instance"
  value = aws_instance.nodeapp01.public_ip

}