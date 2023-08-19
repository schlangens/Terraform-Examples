# Terraform Plans
- The Terraform Apply command is multi stage first does a plan then give you the chance to review that plan and apply it.
- You can just do a plan with no apply by running the terraform plan command
- If you just want to apply no what then you can use the "-auto-approve" parameter `terraform apply -auto-approve` not recommended.
- There are 4 diff actions terraform will plan to do with a resource 
  - Create - Depicted by `+`
  - Change - Depicted by `~`
  - Change w/Force recreate (destroy then create) - Depicted by `-/+`
  - Destroy - Depicted by `-`


- At the bottom of the plan Terraform will give you a summary for the total amount of resources to be added, changed and destroyed.
- When an update requires the resource to be destroyed and then created both the creation and destroy will be included in the summary. For example if you were changing one resource that required a recreation then the plan summary would read: 1 to add, 0 to change, 1 to destroy
- The AWS provider documentation will tell you when changing a field will require a change with a force recreate.