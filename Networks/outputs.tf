output "vpc_region1_id" {
  description = "VPC ID for Region 1"
  value       = module.vpc_region1.vpc_id
}

output "vpc_region1_public_subnet_ids" {
  description = "Public subnet IDs for Region 1"
  value       = module.vpc_region1.public_subnet_ids
}

output "vpc_region1_security_group_id" {
  description = "Security group ID for Region 1"
  value       = module.vpc_region1.sg_id
}

output "vpc_region2_id" {
  description = "VPC ID for Region 2"
  value       = module.vpc_region2.vpc_id
}

output "vpc_region2_public_subnet_ids" {
  description = "Public subnet IDs for Region 2"
  value       = module.vpc_region2.public_subnet_ids
}

output "vpc_region2_security_group_id" {
  description = "Security group ID for Region 2"
  value       = module.vpc_region2.sg_id
}
