# Terraform Outputs
- Outputs give you a way to tell Terraform which values are important so Terraform can output them when you run "apply".
- Outputs can also be return values from a module.
- You can have as many outputs as you want but each output variable has to be given a unique name within a module.
- Outputs are a really useful way to log valuable pieces of information back to the user such as the IP addr of a newly created instance or the DNS name of a load balancer.


# Terraform Output examples
```sh
output "my_value"{
    value = "Hello, Scott"
}
```
Output would be:
`my_value = Hello, Scott`

- Outputs can be results of expressions

```sh
output "my_value"{
    value = "${aws_s3_bucket.my_bucket.arn}"
}
```

- Outputs can be values of locals

```sh
output "my_value"{
    value = "${local.bucket_name}"
}
```
