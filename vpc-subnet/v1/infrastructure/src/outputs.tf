output "vpc_id" {
  description = "vpc id"
  value       = aws_vpc.main.id
}

output "subnet_one_id" {
  description = "subnet one"
  value       = aws_subnet.main.id
}


