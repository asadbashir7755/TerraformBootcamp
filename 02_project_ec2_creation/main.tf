provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example1" {
    ami = "ami-02b8269d5e85954ef"
    instance_type = "t3.micro"
    key_name = "terraforminstances"

tags = {
    Name="terraforminstance"
}


}