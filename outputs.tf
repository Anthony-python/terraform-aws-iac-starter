output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

output "lambda_function_name" {
  value = aws_lambda_function.hello.function_name
}