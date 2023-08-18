
provider "aws" {
  region = "us-east-2"
}

locals {
  bucket_prefix = "sschlangen"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${local.bucket_prefix}-first-bucket"
}