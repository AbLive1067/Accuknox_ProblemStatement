variable "region1" {}
variable "region2" {}

#------------------Region 1 Ec2 Node variables-------------------------
variable "ec2_r1_ami" {
  description = "AMI for Region 1 Ec2 Instance"
  type        = string
  # default    = "ami-0d951b011aa0b2c19"
}
variable "ec2_r1_instance_type" {
  description = "Type of Region 1 Ec2 Instance"
  type        = string
  # default    = "t2.micro"
}
variable "ec2_r1_key_name" {
  description = "Key associated to Region 1 Ec2 Instance"
  type        = string
  # default    = "key1"
}
variable "ec2_r1_instance_count" {
  description = "Number of Instances that need to be created"
  type        = number
}
variable "ec2_r1_subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}
variable "ec2_r1_associate_public_ip_address" {
  description = "Association of public IP address to Region 1 Ec2 Instance"
  type        = bool
}
variable "ec2_r1_root_volume_size" {
  description = "Size of the root block device"
  type        = number
}
variable "ec2_r1_root_volume_type" {
  description = "Type of Root block device"
  type        = string
}
variable "ec2_r1_ebs_volume_size" {
  description = "Size of an EBS volume"
  type        = number
}
variable "ec2_r1_ebs_device_name" {
  description = "Name of EBS volume device"
  type        = string
}
variable "ec2_r1_delete_on_termination" {
  description = "Whether to delete the EBS block on termination"
  type        = bool
}
variable "ec2_r1_user_data" {
  description = "file path for user script"
  type        = string
}
variable "ec2_r1_sg_ids" {
  description = "List of security group IDs attached to Region 1 Ec2 instance"
  type        = list(string)
}
variable "ec2_r1_instance_name" {
  type        = string
  description = "Name of Region 1 Ec2 instance"
}
variable "environment_r1" {
  type        = string
  description = "The environment name for the resources."
}


#------------------Region 2 Ec2 Node variables-------------------------
variable "ec2_r2_ami" {
  description = "AMI for Region 2 Ec2 Instance"
  type        = string
  # default    = "ami-0d951b011aa0b2c19"
}
variable "ec2_r2_instance_type" {
  description = "Type of Region 2 Ec2 Instance"
  type        = string
  # default    = "t2.micro"
}
variable "ec2_r2_key_name" {
  description = "Key associated to Region 2 Ec2 Instance"
  type        = string
  # default    = "key1"
}
variable "ec2_r2_instance_count" {
  description = "Number of Instances that need to be created"
  type        = number
}
variable "ec2_r2_subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}
variable "ec2_r2_associate_public_ip_address" {
  description = "Association of public IP address to Region 2 Ec2 Instance"
  type        = bool
}
variable "ec2_r2_root_volume_size" {
  description = "Size of the root block device"
  type        = number
}
variable "ec2_r2_root_volume_type" {
  description = "Type of Root block device"
  type        = string
}
variable "ec2_r2_ebs_volume_size" {
  description = "Size of an EBS volume"
  type        = number
}
variable "ec2_r2_ebs_device_name" {
  description = "Name of EBS volume device"
  type        = string
}
variable "ec2_r2_delete_on_termination" {
  description = "Whether to delete the EBS block on termination"
  type        = bool
}
variable "ec2_r2_user_data" {
  description = "file path for user script"
  type        = string
}
variable "ec2_r2_sg_ids" {
  description = "List of security group IDs attached to Region 2 Ec2 instance"
  type        = list(string)
}
variable "ec2_r2_instance_name" {
  type        = string
  description = "Name of Region 2 Ec2 instance"
}
variable "environment_r2" {
  type        = string
  description = "The environment name for the resources."
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

