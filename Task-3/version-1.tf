provider "aws" {
  alias = "s3"
  region = "us-west-1"
}

resource "aws_s3_bucket" "tf-bucket-4" {
  bucket = "tf-bucket-4"
}
