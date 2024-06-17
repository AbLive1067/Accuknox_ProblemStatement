output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}
output "public_subnet_ids" {
  value       = aws_subnet.public.*.id
  description = "List of public subnet IDs"
}
output "vpc_cidr_block" {
  value       = var.vpc_cidr_block
  description = "The CIDR block associated with the VPC"
}
output "public_route_table_id" {
  value = aws_route_table.public.*.id
  description = "The Public route table id"
}
output "igw_id" {
  value = aws_internet_gateway.main.id
  description = "The Internet Gateway id"
}
output "sg_id" {
  description = "The ID of the created security group."
  value       = aws_security_group.sg.id
}