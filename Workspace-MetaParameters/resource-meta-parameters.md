# Resource Meta Parameters
- All TF resources have the following 4 parameters defined on them:
  - count - Tells TF how many of a resource to create. You can use this to create multiple copies of a resource
  - For some resources you will not be able to create multiple copies by simply increasing the count. e.g. an s3 bucket as you cannot create more than one bucket with the same name.
  - To get around this you can use the count by use the interpolation syntax `"${count.index}"` to give you the count for that instance. You can then use this in your attributes to make each instance unique.
  - Count is also useful for not creating a resource under certain conditions by setting the count to 0
  - You may not want to create a DB backup of your dev environment
  
  ```sh
  resource "aws_s3_bucket" "bucket" {
    bucket = "sschlangen-${count.index}"
    count = 2
  }
  
  ```
  
  ```sh
  resource "aws_instance" "web" {
    ami = "${data.aws_ami.image.id}"
    instance_type = "t2.micro"
    count = 3
  }
    ```

 - depends_on - Allows you to specifically tell TF that this resource depends on another resource

```sh
resource "aws_s3_bucket" "bucket2" {
    depends_on = ["aws_s3_bucket.bucket"]
}
```
Generally you should use interpolation syntax where possible to let TF work out the dependency order for resources. However there are some scenarios where TF cannot work out the dependency order so you can use the "depends_on" attribute to enforce a dependency 


  - provider - Attributed allows you to specify that this resource is created with a certain provider. If you only have 1 instance of a provider than this can be omitted but when you have multiple instances of a provider and you want to use the non default instance you have to set the provider attribute.

```sh
provider "aws" {
    region = "us-west-2"
    alias = "indiana"
}

resource aws_s3_bucket "indiana_bucket" {
    bucket = "indiana"
    provider = "aws.indiana"
}

```
  - lifecycle - Attribute lets you change the way that TF updates, destroys or changes the resource
    - create_before_destroy - for ex create a new DNS record before removing the old one
    - prevent_destroy - extra safety guard to prevent the destruction of a resource
    - ignore_changes - specified as a list to allow you to ignore certain resource attributes that may change which you want TF to ignore.