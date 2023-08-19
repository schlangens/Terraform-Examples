# Project Layout
- Every project has had a file called "main.tf"
- TF does not mind what you call any file as long as it ends with the ".tf" extension
- You can break up your resources, variables, data sources etc across one more files as you wish.
- TF will take ever file in the folder which it is run from that ends in ".tf" and combine it internally.
- TF will ignore files in any dir above or below the current one where it is being executed from.