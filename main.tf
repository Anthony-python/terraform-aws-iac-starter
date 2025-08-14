terraform {
  cloud {
    organization = "Anthony-python" # Your Terraform Cloud org name

    workspaces {
      name = "terraform-aws-iac-starter"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

# AWS Provider
provider "aws" {
  region = var.aws_region
}

# S3 Bucket
resource "aws_s3_bucket" "project_bucket" {
  bucket = var.bucket_name
  tags = {
    Name        = "Project S3 Bucket"
    Environment = "Dev"
  }
}

# EC2 Instance
resource "aws_instance" "project_ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name        = "Project EC2"
    Environment = "Dev"
  }
}