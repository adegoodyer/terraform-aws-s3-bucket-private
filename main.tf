resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "private"  # ensures the bucket is private

  versioning {
    enabled = true  # enables versioning for the bucket
  }

  dynamic "server_side_encryption_configuration" {
    for_each = var.enable_encryption ? [1] : []
    content {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"  # constant encryption algorithm
        }
      }
    }
  }

  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls          = true
  ignore_public_acls          = true
  block_public_policy         = true
  restrict_public_buckets     = true
}
