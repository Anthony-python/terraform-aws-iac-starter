terraform {
  cloud {
    organization = "Anthony-python"

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
}

provider "aws" {
  region = var.aws_region
}

# ----------------------
# EC2 Instance
# ----------------------
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

# ----------------------
# S3 Bucket
# ----------------------
resource "aws_s3_bucket" "example" {
  bucket = anthony-tf-bucket-20250813

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}