# Terraform Registry Modules
- A registry module is module that someone else has written and uploaded to the TF registry.
- You can use these pre written modules to very quickly build complex infrastructure setups for example there are modules that can spin up a console cluster in AWS


```sh
module "user_queue" {
    source = "terraform-aws-modules/sqs/aws"

    name = "user"

    tags = {
        Service = "user"
        Environment = "dev"
    }
}
```