variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to deploy resources into"
}

variable "bucket_name" {
  type        = string
  description = "Globally unique S3 bucket name"
}