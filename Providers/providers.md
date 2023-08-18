# Terraform Providers
- Terraform provider enables Terraform to talk to an API to manage resources.
- Terraform allows you to configure multiple providers in a single project allowing you to use resources from multiple places for example you can configure AWS, Azure, GCP providers all in a single project.
- Terraform allows you to define a single provider more than once. If you do this you must provide an alias for that 2nd provider.
  - Allows you to manage resources that live in multiple AWS accounts in a single project.
  - Allows you to create resources in multiple AWS regions in a single project



```sh
provider "aws" {
    region = "us-east-2"
    alias = "Indiana"
}

provider "aws" {
    region = "us-east-2"
    alias = "Indiana"
    access_key = "AAAAA"
    secret_key ="adfasdf"
}

```

- This is how you can configure a second provider to point to a diff account. Generally though you don't want to put your access key and secret key inline like this as it will cause them to get checked into source control in plain text.
- You can pin a provider to a certain version or add version requirements for a provider. This can be helpful when a bug fix is in a certain version of a provider that your TF depends on

```sh
provider "aws"{
    region = "us-east-2"
    version = "1.8"
}
provider "aws"{
    region = "us-east-2"
    version = "~>1.8"
}

```
- By default if you do not specify a provider on your resource then the default provider will be used (the one with no alias)