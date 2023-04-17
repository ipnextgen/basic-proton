
output "vpc_id" {
  description = "vpc id"
  value       = module.vpc_subnet.vpc_id
}

output "aws_subnet" {
  description = "subnet"
  value       = module.vpc_subnet.aws_subnet_id
}


output "tf_state_bucket" {
  description = "Terraform state bucket name"
  value       = var.tf_state_bucket
}
