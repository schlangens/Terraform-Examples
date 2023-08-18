# Terraform Data Sources
- Data sources allow data to be fetched or computed from external sources such as another Terraform project or a resource that already exists on AWS.
- The fetched data can then be used in your terraform project using interpolation syntax.

# Example of Data Source
```sh
data "aws_db_instance" "database"{
    db_instance_identifier = "my-test-database"
}
```

- The data resource above returns many attributes about the database (in this case) that can be used in your terraform project such as the address of the instance, availability zone and instance size.

# Using attributes from Data Source
- To use a attribute from data resource use the following format:

```sh
"${data.<resource_type>.<resource_name>.<exported_attribute>}"
```

- For example if we had the following data source:

```sh
data "aws_s3_bucket" "my_bucket"{
    bucket = "sschlangen-bucket"
}


```