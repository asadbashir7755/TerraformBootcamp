variable "region" {
  description = "aws region"
  type = string
  default = "ap-south-1"
}

variable "instance_type" {
  description = "instance type"
  type = string
}

variable "ami_id" {
  description = "ami id"
  type = string
}

variable "instance_key" {
  description = "key pair for instance"
  type = string
}


provider "aws" {
  region = var.region
}

resource "aws_instance" "nodeapp01" {
  instance_type = var.instance_type
  ami = var.ami_id
  key_name = var.instance_key

tags = {
  Name= "nodeapp01"
}

}

variable "s3bucketname" {
  description = "s3 bucket name"
  type = string
}

resource "aws_s3_bucket" "s3_bucketfor_terraform" {
  bucket = var.s3bucketname
}


resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
attribute {
  name = "LockID"
  type = "S"
}
}
output "public_ip" {
  description = "instance public ip"
  value = aws_instance.nodeapp01.public_ip
}