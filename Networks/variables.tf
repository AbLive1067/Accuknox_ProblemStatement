variable "region1" {}
variable "region2" {}


#------------------VPC Region-1 variables-------------------------
variable "vpc_cidr_block_r1" {
  type        = string
  description = "CIDR block for the VPC"
}
variable "instance_tenancy_r1" {
  type        = string
  description = "Set instance-tenancy"
}
variable "enable_dns_hostnames_r1" {
  type        = bool
  description = "whether to enable DNS support or not"
}
variable "enable_dns_support_r1" {
  type        = bool
  description = "whether to enable DNS hostnames or not"
}
variable "availability_zones_r1" {
  type        = list(any)
  description = "List of availability zones"
}
variable "public_subnet_cidr_blocks_r1" {
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}
variable "map_public_ip_on_launch_r1" {
  type        = bool
  description = "whether to map public ip on launch or not"
}
variable "destination_cidr_block_r1" {
  type        = string
  description = "Set the destination cidr block"
}
variable "environment_r1" {
  type        = string
  description = "Name of the environment region 1"
}


#------------------VPC Region-2 variables-------------------------
variable "vpc_cidr_block_r2" {
  type        = string
  description = "CIDR block for the VPC"
}
variable "instance_tenancy_r2" {
  type        = string
  description = "Set instance-tenancy"
}
variable "enable_dns_hostnames_r2" {
  type        = bool
  description = "whether to enable DNS support or not"
}
variable "enable_dns_support_r2" {
  type        = bool
  description = "whether to enable DNS hostnames or not"
}
variable "availability_zones_r2" {
  type        = list(any)
  description = "List of availability zones"
}
variable "public_subnet_cidr_blocks_r2" {
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}
variable "map_public_ip_on_launch_r2" {
  type        = bool
  description = "whether to map public ip on launch or not"
}
variable "destination_cidr_block_r2" {
  type        = string
  description = "Set the destination cidr block"
}
variable "environment_r2" {
  type        = string
  description = "Name of the environment region 2"
}


variable "rules" {
  description = "A map of rule names to their properties"
  type        = map(list(any))
}

#------------------EC2 Region 1 sg variables-------------------------
variable "ec2_r1_sg_name" {
  description = "name of ec2 sg"
  type        = string
}
variable "ec2_r1_sg_description" {
  description = "Description of ec2_r1_sg Security Group"
  type        = string
}
variable "ec2_r1_sg_nametag" {
  description = "tag name of ec2 sg"
  type        = string
}
variable "ec2_r1_sg_ingress_rules" {
  description = "A list of rule names for ingress for ec2 sg"
  type        = list(string)
}
variable "ec2_r1_sg_ingress_cidr_blocks" {
  description = "A list of cidr blocks for ingress"
  type        = list(string)
}
variable "ec2_r1_sg_ingress_security_groups" {
  description = "A list of security group ids in ingress rule"
  type        = list(string)
}
variable "ec2_r1_sg_egress_rules" {
  description = "A list of rule names for egress for ec2 sg"
  type        = list(string)
}
variable "ec2_r1_sg_egress_cidr_blocks" {
  description = "A list of cidr blocks for ingress"
  type        = list(string)
}
variable "ec2_r1_sg_egress_security_groups" {
  description = "A list of security group ids in egress rule"
  type        = list(string)
}


#------------------EC2 Region-2 sg variables-------------------------
variable "ec2_r2_sg_name" {
  description = "name of ec2 sg"
  type        = string
}
variable "ec2_r2_sg_description" {
  description = "Description of ec2_r2_sg Security Group"
  type        = string
}
variable "ec2_r2_sg_nametag" {
  description = "tag name of ec2 sg"
  type        = string
}
variable "ec2_r2_sg_ingress_rules" {
  description = "A list of rule names for ingress for ec2 sg"
  type        = list(string)
}
variable "ec2_r2_sg_ingress_cidr_blocks" {
  description = "A list of cidr blocks for ingress"
  type        = list(string)
}
variable "ec2_r2_sg_ingress_security_groups" {
  description = "A list of security group ids in ingress rule"
  type        = list(string)
}
variable "ec2_r2_sg_egress_rules" {
  description = "A list of rule names for egress for ec2 sg"
  type        = list(string)
}
variable "ec2_r2_sg_egress_cidr_blocks" {
  description = "A list of cidr blocks for ingress"
  type        = list(string)
}
variable "ec2_r2_sg_egress_security_groups" {
  description = "A list of security group ids in egress rule"
  type        = list(string)
}

#------------------Common tags variables-------------------------
variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}
variable "owner" {
  type        = string
  description = "Name of owner"
}
variable "application" {
  type        = string
  description = "Name of the application"
}


