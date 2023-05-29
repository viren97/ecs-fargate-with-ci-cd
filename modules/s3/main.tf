resource "aws_s3_bucket" "main" {
  bucket = var.name
}

resource "aws_s3_bucket_ownership_controls" "rule" {
  bucket = aws_s3_bucket.main.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  depends_on = [aws_s3_bucket_ownership_controls.rule]

  bucket = aws_s3_bucket.main.id
  acl    = "private"
}

