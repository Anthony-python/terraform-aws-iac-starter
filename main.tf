terraform {
  cloud {
    organization = "Anthony-python" # Change to your Terraform Cloud organization name
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

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
}

# S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = {
    Name        = "MyTerraformBucket"
    Environment = "Dev"
  }
}

# EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "MyTerraformInstance"
  }
}