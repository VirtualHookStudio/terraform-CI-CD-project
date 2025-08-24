#S3 BUCKET
resource "aws_s3_bucket" "tfstate" {
  bucket = var.bucket_name_tfstate
}
