output "name" {
  value       = aws_s3_bucket.bucket.bucket_domain_name 
  description = "The S3 Bucket domain name."
}

output "arn" {
  value       = aws_s3_bucket.bucket.arn
  description = "The S3 Bucket ARN."
}
