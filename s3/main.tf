provider "aws" {
  region     = "ap-south-1"
  access_key = " "
  secret_key = " "
}

resource "aws_s3_bucket" "first" {
  bucket = "my-1-s3-bucket"
  force_destroy = false
}
resource "aws_s3_bucket_acl" "example1" {
  bucket = aws_s3_bucket.first.id
  acl    = "private"
}

