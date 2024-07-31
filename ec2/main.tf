
#############  1st we define provider 

provider "aws" {
  region = "ap-south-1"
  profile = "akash-ughade"
}

#############  2nd we define what type of required provide we want 
#############  and version 

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.10"
    }
  }

  required_version = ">= 1.5.6"
}

#############  ec2  creation   

resource "aws_instance" "My-Linux-1" {
  ami           = "ami-068e0f1a600cd311c"
  instance_type = "t2.micro"
  security_groups = [var.my_sg]
  tags = {
    Name           = "Akash Ughade"
    Designation    = "DevOps Engineer"
    OS             = "Amazon Linux RHEL"
    Specification  = "Hands-on Terraform & Ansible"
    Organization   = "NCS Indore"
  }
}

#############  variables we want

#############  Ouputs we want 

