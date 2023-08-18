provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "sschlangen-bucket"
}

resource "aws_iam_user" "sschlangen" {
  name = "Scott-Schlangen"
}

data "template_file" "bucket_policy" {
  template = file("policy.json")

  vars = {
    bucket_arn = aws_s3_bucket.my_bucket.arn
  }
}

resource "aws_iam_user_policy" "my_bucket_policy" {
  name   = "my-policy"
  user   = aws_iam_user.sschlangen.name
  policy = data.template_file.bucket_policy.rendered
}

output "policy" {
  value = aws_iam_user_policy.my_bucket_policy.policy
}
