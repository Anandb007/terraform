terraform {
  backend "s3" {
    bucket         = "your-bucket-name"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "your-dynamodb-table"
  }
}

resource "aws_s3_bucket" "remote_state_bucket" {
  bucket        = "your-bucket-name"
  acl           = "private"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = true

      default_sse_KMS {
        key_id = "your-kms-key-id"  
      }
    }
  }

  block_public_access {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }

  logging {
    target_bucket = "your-logging-bucket"
    target_prefix = "logs/"
  }
}