resource "aws_s3_bucket" "bucket" {
  bucket = var.name

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "aws_s3_bucket_policy" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  policy = var.policy
}

resource "aws_s3_bucket_ownership_controls" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    object_ownership = var.acl == "" ? "BucketOwnerEnforced" : "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket" {
  count = var.acl == "" ? 0 : 1

  bucket = aws_s3_bucket.bucket.id
  acl    = var.acl

  depends_on = [aws_s3_bucket_ownership_controls.bucket]
}

resource "aws_s3_bucket_versioning" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Disabled"
  }
}
