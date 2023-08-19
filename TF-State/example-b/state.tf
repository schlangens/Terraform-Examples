terraform {
    backend "s3" {
        bucket = "sschlangen-terraform-state"
        key = "project.state"
        region = "us-east-1"
    }
}