#---------VPC variables--------------
variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}
variable "instance_tenancy" {
  type        = string
  description = "Set instance-tenancy"
}
variable "enable_dns_support" {
  type        = bool
  description = "whether to enable DNS support or not"
}
variable "enable_dns_hostnames" {
  type        = bool
  description = "whether to enable DNS hostnames or not"
}



#---------Tags variables--------------
variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}
variable "owner" {
  type        = string
  description = "Name of owner"
}
variable "environment" {
  type        = string
  description = "The environment name for the resources."
}
variable "application" {
  type        = string
  description = "Name of the application"
}

#---------Subnets variables--------------
variable "public_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}
variable "availability_zones" {
  type        = list(any)
  description = "List of availability zones"
}
variable "map_public_ip_on_launch" {
  type        = bool
  description = "whether to map public ip on launch or not"
}

#---------Route-tables variables--------------
variable "destination_cidr_block" {
  type        = string
  description = "Set the destination cidr block"
}


#---------Security Group variables--------------
variable "name" {
  description = "The name of the security group."
}
variable "description" {
  description = "The description of the security group."
}

#-------------------Ingress Rules------------------
variable "rules" {
  description = "A map of rule names to their properties"
  type        = map(list(string))
}
variable "ingress_rules" {
  description = "A list of rule names for ingress"
  type        = list(string)
}
variable "ingress_cidr_blocks" {
  description = "A list of cidr blocks for ingress"
  type = list(string)
}
variable "ingress_security_groups" {
  description = "A list of security group ids for ingress"
  type = list(string)
}

#-------------------Egress Rules------------------
variable "egress_rules" {
  description = "A list of rule names for egress"
  type        = list(string)
}
variable "egress_cidr_blocks" {
  description = "A list of cidr blocks for egress"
  type = list(string)
}

variable "egress_security_groups" {
  description = "A list of security group ids for egress"
}

#-------------------Tags--------------------
variable "sg_nametag" {
  type = string
}