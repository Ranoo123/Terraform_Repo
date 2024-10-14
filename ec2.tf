provider "aws" {
  region     = "us-east-1"
}
terraform {
  required_providers {
    myec2 = {
      source  = "hashicorp/aws"
      version = "5.28.0"
    }
  }
}
resource "aws_instance" "myec2" {
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
tags = {
    Name = "demo_terraform"
  }
}
