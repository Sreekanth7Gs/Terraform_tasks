provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf-bucket" {
  count = length(var.s3_bucket_names) 

  bucket = var.s3_bucket_names [count.index]
}

