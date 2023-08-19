# Terraform Remote State
- Terraform keeps track of the infrastructure it has created in a state file.
- Without its state file Terraform will not know it has created anything.
- By default Terraform will store state locally in a file called "terraform.tfstate"
- To view TF state you can run the `terraform state show` command
- TF has many diff backends available that can store stake, making it available remotely
  - S3
  - Consul
- Using remote state has the advantage that you can share state across machines making this advisable when working in a team on a TF project
- Some TF state backends additionally provide state locking, meaning that TF will ensure that 2 users cannot modify state at the same time.
- To config TF to use remote state create a file called "state.tf" in the root of your project in the following format:

```sh
terraform{
    backend "s3" {
        bucket = "terraform-state-bucket"
        key = "project.state"
        region = "us-east-1"
    }
}
```