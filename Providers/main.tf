

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-east-2"
  alias  = "indiana"
}

resource aws_s3_bucket "ohio_bucket" {
  bucket = "sschlangen-ohio"
}

resource aws_s3_bucket "sschlangen-indiana-bucket" {
  bucket   = "sschlangen-indiana-bucket"
  provider = "aws.indiana"
}