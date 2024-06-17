
module "vpc_region1" {
  source = "../Modules/Networking"
  # Pass variables to the module
  providers = {
    aws = aws.us-east-1
  }
  vpc_cidr_block            = var.vpc_cidr_block_r1
  instance_tenancy          = var.instance_tenancy_r1
  enable_dns_hostnames      = var.enable_dns_hostnames_r1
  enable_dns_support        = var.enable_dns_support_r1
  availability_zones        = var.availability_zones_r1
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks_r1
  map_public_ip_on_launch   = var.map_public_ip_on_launch_r1
  destination_cidr_block    = var.destination_cidr_block_r2
  name                      = var.ec2_r1_sg_name        #"ec2 sg"
  description               = var.ec2_r1_sg_description #"ec2 security group"
  sg_nametag                = var.ec2_r1_sg_nametag     #"ec2_r1_sg"
  rules                     = var.rules
  ingress_rules             = var.ec2_r1_sg_ingress_rules
  ingress_cidr_blocks       = var.ec2_r1_sg_ingress_cidr_blocks
  ingress_security_groups   = var.ec2_r1_sg_ingress_security_groups
  egress_rules              = var.ec2_r1_sg_egress_rules
  egress_security_groups    = var.ec2_r1_sg_egress_security_groups
  egress_cidr_blocks        = var.ec2_r1_sg_egress_cidr_blocks
  environment               = var.environment_r1
  owner                     = var.owner
  application               = var.application
}

module "vpc_region2" {
  source = "../Modules/Networking"
  # Pass variables to the module
  providers = {
    aws = aws.us-east-2
  }
  vpc_cidr_block            = var.vpc_cidr_block_r2
  instance_tenancy          = var.instance_tenancy_r2
  enable_dns_hostnames      = var.enable_dns_hostnames_r2
  enable_dns_support        = var.enable_dns_support_r2
  availability_zones        = var.availability_zones_r2
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks_r2
  map_public_ip_on_launch   = var.map_public_ip_on_launch_r2
  destination_cidr_block    = var.destination_cidr_block_r2
  name                      = var.ec2_r2_sg_name        #"ec2 sg"
  description               = var.ec2_r2_sg_description #"ec2 security group"
  sg_nametag                = var.ec2_r2_sg_nametag     #"ec2_r2_sg"
  rules                     = var.rules
  ingress_rules             = var.ec2_r2_sg_ingress_rules
  ingress_cidr_blocks       = var.ec2_r2_sg_ingress_cidr_blocks
  ingress_security_groups   = var.ec2_r2_sg_ingress_security_groups
  egress_rules              = var.ec2_r2_sg_egress_rules
  egress_security_groups    = var.ec2_r2_sg_egress_security_groups
  egress_cidr_blocks        = var.ec2_r2_sg_egress_cidr_blocks
  environment               = var.environment_r2
  owner                     = var.owner
  application               = var.application
}








