locals {
  name = "Scott"
}

output "my_name" {
  value = "${local.name}"
}