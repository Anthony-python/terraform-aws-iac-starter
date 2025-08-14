terraform {
  cloud {
    organization = "Anthony-python" # Your Terraform Cloud org

    workspaces {
      name = "terraform-aws-iac-starter" # Your Terraform Cloud workspace
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Create EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2-Demo"
  }
}

# Create S3 Bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = {
    Name        = "Terraform-S3-Demo"
    Environment = "Dev"
  }
}