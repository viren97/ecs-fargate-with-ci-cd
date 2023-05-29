output "bucket" {
  value       = aws_s3_bucket.main.bucket
  description = "s3 bucket"
}

output "bucket_id" {
  value       = aws_s3_bucket.main.bucket
  description = "s3 bucket id"
}

output "bucker_arn" {
  value       = aws_s3_bucket.main.arn
  description = "s3 bucket arn"
}
