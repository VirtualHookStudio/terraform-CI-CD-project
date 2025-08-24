#S3 BUCKET
resource "aws_s3_bucket" "tfstate" {
  bucket = var.bucket_name_tfstate
}

# BLOCKED PUBLIC ACCESS
resource "aws_s3_bucket_public_access_block" "public-access" {
  bucket                  = aws_s3_bucket.tfstate.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

#VERSION ENABLE
resource "aws_s3_bucket_versioning" "version-enable-conf" {
  bucket = aws_s3_bucket.tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}
