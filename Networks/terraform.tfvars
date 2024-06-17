#------------------VPC Region-1 variable-------------------------
region1                      = "us-east-1"
vpc_cidr_block_r1            = "10.0.0.0/16"
instance_tenancy_r1          = "default"
enable_dns_hostnames_r1      = true
enable_dns_support_r1        = true
availability_zones_r1        = ["us-east-1a"]
public_subnet_cidr_blocks_r1 = ["10.0.0.0/24"]
map_public_ip_on_launch_r1   = true
destination_cidr_block_r1    = "0.0.0.0/0"
environment_r1               = "us_east_1"

#------------------VPC Region-2 variable-------------------------
region2                      = "us-east-2"
vpc_cidr_block_r2            = "11.0.0.0/16"
instance_tenancy_r2          = "default"
enable_dns_hostnames_r2      = true
enable_dns_support_r2        = true
availability_zones_r2        = ["us-east-2a"]
public_subnet_cidr_blocks_r2 = ["11.0.0.0/24"]
map_public_ip_on_launch_r2   = true
destination_cidr_block_r2    = "0.0.0.0/0"
environment_r2               = "us_east_2"

#------------------Security Group variables-------------------------
rules = {
  "ec2_r1_ingress_rule1" = ["22", "22", "tcp", "SSH access"],
  "ec2_r1_ingress_rule2" = ["80", "80", "tcp", "http access"]
  "ec2_r1_ingress_rule3" = ["443", "443", "tcp", "https access"]
  "ec2_r1_egress_rule1"  = ["0", "0", "-1", "All open"]
  "ec2_r2_ingress_rule1" = ["22", "22", "tcp", "SSH access"],
  "ec2_r2_ingress_rule2" = ["80", "80", "tcp", "http access"]
  "ec2_r2_ingress_rule3" = ["443", "443", "tcp", "https access"]
  "ec2_r2_egress_rule1"  = ["0", "0", "-1", "All open"],
}

#------------------Security Group Region 1 variables-------------------------
ec2_r1_sg_name                    = "ec2_r1_sg_app1"
ec2_r1_sg_description             = "ec2 region-1 sg app"
ec2_r1_sg_nametag                 = "ec2_r1_sg_app1"
ec2_r1_sg_ingress_rules           = ["ec2_r1_ingress_rule1", "ec2_r1_ingress_rule2", "ec2_r1_ingress_rule3"]
ec2_r1_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
ec2_r1_sg_ingress_security_groups = []
ec2_r1_sg_egress_rules            = ["ec2_r1_egress_rule1"]
ec2_r1_sg_egress_cidr_blocks      = ["0.0.0.0/0"]
ec2_r1_sg_egress_security_groups  = []

#------------------Security Group Region 2 variables-------------------------
ec2_r2_sg_name                    = "ec2_r2_sg_app1"
ec2_r2_sg_description             = "ec2 region-2 sg app"
ec2_r2_sg_nametag                 = "ec2_r2_sg_app1"
ec2_r2_sg_ingress_rules           = ["ec2_r2_ingress_rule1", "ec2_r2_ingress_rule2", "ec2_r2_ingress_rule3"]
ec2_r2_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
ec2_r2_sg_ingress_security_groups = []
ec2_r2_sg_egress_rules            = ["ec2_r2_egress_rule1"]
ec2_r2_sg_egress_cidr_blocks      = ["0.0.0.0/0"]
ec2_r2_sg_egress_security_groups  = []


#------------------common tags variables-------------------------
owner       = "Projekt"
application = "Projekt_Kuber"