provider "aws" {
  region = var.region
}

resource "aws_security_group" "nodeapp01sg" {
  name = "nodeapp01sg"
  description = "allow ssh and http traffic only"
  vpc_id = aws_vpc.default.id

#   inbounc rules
    ingress  {
        description = "SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.ssh_cidr]
    }
    ingress {
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

#outbound rules
    egress {
        description = "allow all outbound traffic"
        from_port = 0
        to_port= 0
        protocol= "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}