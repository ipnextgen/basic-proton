output "vpc_id" {
  description = "vpc id"
  value       = aws_vpc.main.vpc_id
}

output "subnet_one_id" {
  description = "subnet one"
  value       = aws_subnet.main.subnet_one_id
}


