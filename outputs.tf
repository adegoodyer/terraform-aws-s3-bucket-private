output "bucket_id" {
  description = "The ID of the S3 bucket."
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket."
  value       = aws_s3_bucket.this.arn
}

output "bucket_endpoint" {
  description = "The endpoint of the S3 bucket."
  value       = "https://${aws_s3_bucket.this.bucket}.s3.${var.region}.amazonaws.com"
}
