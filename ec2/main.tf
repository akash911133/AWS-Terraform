provider "aws" {
  region = "ap-south-1"
  profile = "akash-ughade"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.10"
    }
  }

  required_version = ">= 1.5.6"
}

resource "aws_instance" "My-Linux-1" {
  ami           = "ami-068e0f1a600cd311c"
  instance_type = "t2.micro"

  tags = {
    Name           = "Akash Ughade"
    Designation    = "DevOps Engineer"
    OS             = "Amazon Linux RHEL"
    Specification  = "Hands-on Terraform & Ansible"
    Organization   = "NCS Indore"
  }
}