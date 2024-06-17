
module "ec2_r1" {
  source = "../Modules/EC2"
  providers = {
    aws = aws.us-east-1
  }
  ami                         = var.ec2_r1_ami
  instance_type               = var.ec2_r1_instance_type
  key_name                    = var.ec2_r1_key_name
  instance_count              = var.ec2_r1_instance_count
  subnet_ids                  = var.ec2_r1_subnet_ids
  associate_public_ip_address = var.ec2_r1_associate_public_ip_address
  root_volume_size            = var.ec2_r1_root_volume_size
  root_volume_type            = var.ec2_r1_root_volume_type
  ebs_volume_size             = var.ec2_r1_ebs_volume_size
  ebs_device_name             = var.ec2_r1_ebs_device_name
  delete_on_termination       = var.ec2_r1_delete_on_termination
  user_data                   = var.ec2_r1_user_data
  sg_ids                      = var.ec2_r1_sg_ids
  environment                 = var.environment_r1
  owner                       = var.owner
  application                 = var.application
  instance_name               = var.ec2_r1_instance_name
}


module "ec2_r2" {
  source = "../Modules/EC2"
  providers = {
    aws = aws.us-east-2
  }
  ami                         = var.ec2_r2_ami
  instance_type               = var.ec2_r2_instance_type
  key_name                    = var.ec2_r2_key_name
  instance_count              = var.ec2_r2_instance_count
  subnet_ids                  = var.ec2_r2_subnet_ids
  associate_public_ip_address = var.ec2_r2_associate_public_ip_address
  root_volume_size            = var.ec2_r2_root_volume_size
  root_volume_type            = var.ec2_r2_root_volume_type
  ebs_volume_size             = var.ec2_r2_ebs_volume_size
  ebs_device_name             = var.ec2_r2_ebs_device_name
  delete_on_termination       = var.ec2_r2_delete_on_termination
  user_data                   = var.ec2_r2_user_data
  sg_ids                      = var.ec2_r2_sg_ids
  environment                 = var.environment_r2
  owner                       = var.owner
  application                 = var.application
  instance_name               = var.ec2_r2_instance_name
}