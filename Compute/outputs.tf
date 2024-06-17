output "ec2_r1_instance_ids" {
  description = "EC2 Instance IDs for Region 1"
  value       = module.ec2_r1.instance_id
}

output "ec2_r1_public_ips" {
  description = "Public IP addresses of EC2 instances in Region 1"
  value       = module.ec2_r1.instance_public_ip
}

output "ec2_r1_private_ips" {
  description = "Private IP addresses of EC2 instances in Region 1"
  value       = module.ec2_r1.instance_private_ip
}

output "ec2_r2_instance_ids" {
  description = "EC2 Instance IDs for Region 2"
  value       = module.ec2_r2.instance_id
}

output "ec2_r2_public_ips" {
  description = "Public IP addresses of EC2 instances in Region 2"
  value       = module.ec2_r2.instance_public_ip
}

output "ec2_r2_private_ips" {
  description = "Private IP addresses of EC2 instances in Region 2"
  value       = module.ec2_r2.instance_private_ip
}
