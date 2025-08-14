terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "YOUR_ORG_NAME" # Change to your Terraform Cloud org
    workspaces {
      name = "iac-beginner-labs"    # Change to your workspace name
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
  }
}