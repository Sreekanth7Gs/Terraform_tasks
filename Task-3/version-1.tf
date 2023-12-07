provider "aws" {
  alias = "s3"
  region = "us-west-1"
}

resource "aws_s3_bucket" "tf-bucket-4" {
  bucket = "tf-bucket-4"
}


resource "aws_s3_bucket_public_access_block" "tf-bucket-4" {
  bucket = aws_s3_bucket.tf-bucket-4.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

