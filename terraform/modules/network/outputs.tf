output "security_group_frontend_id" {
  value = aws_security_group.security-group-frontend.id
}

output "public_subnet_a_id" {
  value = aws_subnet.public-subnet-a.id
}

output "public_subnet_b_id" {
  value = aws_subnet.public-subnet-b.id
}
