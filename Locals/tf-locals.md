# Terraform Locals
- Allow you to assign a name to an expression, you can think of them as variable
- You can use a local value multiple times within a module
- Local values can be combined to make more local values
- Locals are created in a locals block, you can have one or more values in a locals block and one or more locals blocks in a module.
- Locals allow you to define a value in one place and then you can use the local in your project. This means if you change the value of the local you only have to update it in a single place


# Terraform locals Examples

```sh
locals{
    bucket_name_prefix ="sschlangen"
    default_instance_tag = "my-instance"
}
```

You can do the same thing in 2 locals blocks

```sh

local {
    bucket_name_prefix = "sschlangen"
}

local {
    default_instance_tag = "my-instance"
}

```

# Interpolation Syntax for Locals
- Format for interpolation syntax is `"${local.<variable_name>}"`
- Example:
  ```sh
  locals{
    bucket_name_prefix = "sschlangen"
  }
   
  ```
 Would be referenced by `"${local.bucket_name_prefix}"`

# Combining Locals
- Locals can be combined to make more locals

```sh
locals {
    first = "Scott"
    last = "Schlangen"
    name = "${local.first}-${local.last}"
}
```

# Locals as Value of Exported Attribute
- Locals can be assigned to the value of an exported attribute from a resource.

```sh
resource "aws_s3_bucket" "my_bucket" {
    bucket = "sschlangen-first-bucket"
}

locals {
    bucket_arn = "${aws_s3_bucket.my_bucket.arn}"
}
```