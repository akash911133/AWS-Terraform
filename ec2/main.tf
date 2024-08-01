
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
  depends_on = [aws_security_group.my_custom_sg1]
  security_groups = [var.my_custom_sg1]
  tags = {
    Name           = "Akash Ughade"
    Designation    = "DevOps Engineer"
    OS             = "Amazon Linux RHEL"
    Specification  = "Hands-on Terraform & Ansible"
    Organization   = "NCS Indore"
  }

}


resource "aws_security_group" "my_custom_sg1" {
  name        = "my-custom security group"
  description = "Security group application HOSTING secure and unsecure port open"

  // Inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  // Allow SSH from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  // Allow HTTP from anywhere
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  // Allow HTTPS from anywhere
  }

  
}

#############  variables we want

#############  Ouputs we want 

