region1 = "us-east-1"
region2 = "us-east-2"


#------------------Region 1 EC2 variables-------------------------
ec2_r1_ami                         = "ami-08a0d1e16fc3f61ea"
ec2_r1_instance_type               = "t2.small"
ec2_r1_key_name                    = "us-east-1_key"
ec2_r1_instance_count              = 1
ec2_r1_subnet_ids                  = ["subnet-0023b04e48d209d77"]
ec2_r1_associate_public_ip_address = true
ec2_r1_root_volume_size            = 8
ec2_r1_root_volume_type            = "gp3"
ec2_r1_ebs_device_name             = "/dev/xvda"
ec2_r1_ebs_volume_size             = 8
ec2_r1_delete_on_termination       = false
ec2_r1_user_data                   = "ec2_script.sh"
ec2_r1_sg_ids                      = ["sg-0c355b8176b6ebb0b"]
ec2_r1_instance_name               = "Region-1_ec2"
environment_r1                     = "us-east-1"


#------------------Region 2 EC2 variables-------------------------
ec2_r2_ami                         = "ami-033fabdd332044f06"
ec2_r2_instance_type               = "t2.small"
ec2_r2_key_name                    = "us-east-2_key"
ec2_r2_instance_count              = 1
ec2_r2_subnet_ids                  = ["subnet-02df2e5f94511fbf7"]
ec2_r2_associate_public_ip_address = true
ec2_r2_root_volume_size            = 8
ec2_r2_root_volume_type            = "gp3"
ec2_r2_ebs_device_name             = "/dev/xvda"
ec2_r2_ebs_volume_size             = 8
ec2_r2_delete_on_termination       = false
ec2_r2_user_data                   = "ec2_script.sh"
ec2_r2_sg_ids                      = ["sg-0c0d4f7a08b987a4a"]
ec2_r2_instance_name               = "Region-2_ec2"
environment_r2                     = "us-east-2"


#------------------Common tags variables-------------------------
owner       = "Projekt"
application = "app-1"

