terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-011899242bb902164"
  instance_type = "t2.xlarge"

  tags = {
    Name = "DevOps-Test-SRV"
  }
}
