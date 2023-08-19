# Managing Terraform State
- Terraform allows you to manage its state.
- You can import existing resources into TF state meaning TF will take over the ownership of that resource.
- You can remove resources from Terraform's state to stop TF from managing a resource.
- By managing TF state it is possible to import your existing IT infrastructure into TF piece by piece
  - Create a resource in your TF project
  - Import the resource into TF state
  - Run a plan to ensure that TF does not want to change the resource.

- Each resource is free to implement import differently and in a way that makes sense for that resource so it is important to consult the documentation before importing resources.

```sh
terraform import <resource_path><id>
```

- To remove an item from TF state you can use the `terraform state rm` command `terraform state rm <resource_path>`.
- 