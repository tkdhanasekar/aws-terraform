terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  subnet_id = "subnet-0ccba3b8cfd0645e2"
  key_name = "mykey"
  associate_public_ip_address = "true"
  tags = {
    Name = "demo-server"
  }
}

