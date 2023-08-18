# Terraform Templates and Files
- TF allows you to use a file as parameter to a resource.
- This can be useful for a big block of data e.g. for a config file or a big block of JSON for an AWS IAM Policy.
- To use a file's contents as the value of a resource attribute you can use the "file" function which is accessible using `${file("<path_to_file>)}"`


For Example:

```sh
resource "aws_iam_user_policy" "my_bucket_policy"{
    name = "My-bucket-policy"
    user = "Scott-Schlangen"
    policy = ${file("policy.json")}"
}
```

- If you want to have values that change in a file then you can do this using a TF template data source.
- Anywhere in your file you can have a placeholder using the syntax `${place_holder_name}` where place_holder_name is any name you want.
- To set the value for the place holders you set them using the vars property on the template data source.


`Hello ${name}`

```sh
data "template_file" "say_hello" {
    template = "${file("say_hello.tpl")}"

    vars {
        name = "Scott"
    }
}
```

