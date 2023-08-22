# Terraform Workspaces
- TF allows you to create multiple instance of a single project by using TF workspaces
- You can think of a TF workspace as a complete separate copy of your TF state file
- You can use TF workspaces to manage multiple environments from a single TF project e.g. dev, staging and production
- To get access to TF workspaces you have to be using one of the following state backend:
  - AzureRM
  - Consul
  - GCS
  - local (default)
  - Manta
  - S3

- Every TF project has at least 1 workspace
- When TF inits it creates a workspace called "default"
- Default workspace is always there and cannot be deleted.


- Create a new TF workspace `terraform workspace new <name>`
- List all workspaces: `terraform workspace list`
- Switch Workspace: `terraform workspace select <name>`
- Del workspace: `terraform workspace delete <name>`

- To use the current workspace to make decisions you can use the following interpolation syntax: `"${terraform.workspace}"`
- 