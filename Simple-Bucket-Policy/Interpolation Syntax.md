- To reference an exported attribute from a resource use the interpolation syntax

``"${<resource_type>.<resource_name>.<exported_attribute>}"``


- For ex if we created a resource 
	```sh
	resource "aws_s3_bucket" "my_bucket"{
		bucket = "sschlangen-myfirst-bucket"
	}
	```
	

- Ref the created s3 bucket ARN using
``"${aws_s3_bucket.my_bucket.arn}"``


