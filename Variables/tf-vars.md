# TF Vars
- Vars serve as parameters to the TF module.
- When used at the top level they enable you to pass parameters into your TF project
  - Command line
  - File
  - Environment Variables

- 3 properties can be defined on a variable
  - Type: (Optional) if this is set it defines the type of variable, if no type is set the type of the default value will be used if neither are set the type will be assumed to be a string. Allowed values "string", "list", and "map"
  - Default: (Optional) If this is set then the variable will take this value if you do not pass one in. If no default value is set and a value is not passed in TF will error
  - Description: (Optional) purely to give the user of the TF project some information as to what this var is used for. TF ignores this field.


- Default value of a variable must be a literal value of example 1, "foo" or ["a", "b"]. Interpolation syntax is not allowed


```sh
variable "key" {
    type = "string"
}

variable "images" {
    type: "map"

    default = {
        us-east-1 = "image-1234"
        us-west-2 = "image-4567"
    }
}
variable "zones" {
    default = ["us-east-1a", "us-east-1b"]
    }
}

```
- There may be some properties that are secret and you don't want to put in source control, variables gives you a neat way of passing those values into your project as you run TF.

- To use the value of a variable in your project you use interpolation syntax of the format `"${var.<variable_name>}"`

```sh
variable "my_name"{}
    "${var.my_name}"
```
- Map Variables allow you to define values for TF to use in diff cases for example you could define a map to specify which instance size to use depending on your environment type:

```sh
variable "instance_size_map"{
    default = {
        dev = "t2.micro",
        test = "t2.medium"
        prod = "m4.large"
    }
}
variable "instance_size" {}
"${lookup(var.instance_size_map, var.instance_size)}"
```
- To set the value of a variable in via CLS use the following: `terraform apply --var my_name=scott`
- To set the value of a variable via environment variable `env TF_VAR_my_name=Scott terraform apply`
- To set the variable using a file, create a file with the extension ".tfvars" then give the variable a value using "name" = "value"


```sh
variable "my_name" {}
inside myvalues.tfvars
my_name = "Scott"
```