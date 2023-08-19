# Terraform Custom Modules
- A module is a self contained configuration package that can be used to logically group a configuration together.
- You can use a module one or more times in a project making modules an excellent way of packaging up some useful configuration.
- Modules are created by creating a sub folder in your TF project and placing your TF configuration files in there. Any files in the sub folder will be part of the module.
- Modules can take input parameters it does this by defining variables.
- Modules can return values by defining outputs


# Standard Layout
- main.tf - where you place your TF config (resources, data sources etc)
- variables.tf - where you define your variables (these will be inputs to your module)
- output.tf - where you define your outputs (these will be returned by your module.)

- When defining input values for a module we simply define variables as we know. As these variables are defined inside a module TF will require you to pass a value for these variables when using the module.

```sh
module "queue1" {
    source = "./queue"
    queue_name = "my_queue"
}
```

- To make and input parameter to a module optional then simply give the variable a default value. The default value for the variable will then be used if the user does not supply one when referencing the module.

- To reference a file from inside a TF module you cannot use the relative path this is because all paths in TF are assumed to be from the project root.

- Therefore if you want to use a file inside your custom module then you need to use the `"${path.module}"` to get the path of where your module lives then you can put the path to your file after that for example:

```sh
resource "aws_iam_user_policy" "my_bucket_policy"{
    name = "my-bucket-policy"
    user = "Scott-Schlangen"
    policy = "${file("${path.module}/policy.json ")}"
}
``` 

- To reference an output from a module use interpolation syntax:

```sh
${module.<module.identifier>.<output.name>}

module "queue1"{
    source = "./queue"
    queue_name = "my_queue_arn"
}
"${module.queue1.queue_arn}"
```
