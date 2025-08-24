output "public_subnet_a_id" {
  value = module.vpc.public_subnet_a_id
}

output "public_subnet_b_id" {
  value = module.vpc.public_subnet_b_id
}

output "security_group_frontend_id" {
  value = module.vpc.security_group_frontend_id
}
