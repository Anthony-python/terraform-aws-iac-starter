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

  required_version = ">= 1.3.0"
}