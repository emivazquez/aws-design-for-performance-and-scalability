# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "t2_micro" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  count = 4

  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "m4_large" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "m4.large"
  count = 2

  tags = {
    Name = "Udacity M4"
  }
}