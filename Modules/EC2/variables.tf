#------------------EC2 variables------------------
variable "ami" {
  description = "AMI for EC2 Instance"
  type        = string
  # default    = "ami-0d951b011aa0b2c19"
}

variable "instance_type" {
  description = "Type of EC2 Instance"
  type        = string
  # default    = "t2.micro"
}

variable "key_name" {
  description = "Key associated to EC2 Instance"
  type        = string
  # default    = "key1"
}

variable "instance_count" {
  description = "Number of Instances that need to be created"
  type        = number
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}



variable "associate_public_ip_address" {
  description = "Association of public IP address to EC2 Instance"
  type        = bool
}


#------------------Root block device variables------------------
variable "root_volume_size" {
  description = "Size of the root block device"
  type        = number
}

variable "root_volume_type" {
  description = "Type of Root block device"
  type        = string
}


#------------------EBS device variables------------------
variable "ebs_volume_size" {
  description = "Size of an EBS volume"
  type        = number
}

variable "ebs_device_name" {
  description = "Name of EBS volume device"
  type        = string
}

variable "delete_on_termination" {
  description = "Whether to delete the EBS block on termination"
  type        = bool
}


variable "user_data" {
  description = "file path for user script"
  type = string
}

#------------------Security Group variables------------------
variable "sg_ids" {
  description = "List of security group IDs attached to EC2 instance"
  type        = list(string)
}


#------------------Common tags variables------------------
variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the EC2-SG resources"
}

variable "environment" {
  type        = string
  description = "The environment name for the resources"
}

variable "owner" {
  type        = string
  description = "Owner's name for the resource"
}

variable "application" {
  type        = string
  description = "Name of the application related to the resource"
}

variable "instance_name" {
  type        = string
  description = "Name of EC2 instance"
}
