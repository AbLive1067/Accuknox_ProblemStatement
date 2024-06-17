
resource "aws_instance" "Instance" {
  ami                          = var.ami
  instance_type                = var.instance_type
  key_name                     = var.key_name
  count                        = var.instance_count
  vpc_security_group_ids       = var.sg_ids
  associate_public_ip_address  = var.associate_public_ip_address
  subnet_id                    = element(var.subnet_ids, count.index % length(var.subnet_ids))

  root_block_device {
    volume_size = var.root_volume_size  #30
    volume_type = var.root_volume_type  #"gp2" 
  }

  ebs_block_device {
    device_name             = var.ebs_device_name   #"/dev/sdf"
    volume_size             = var.ebs_volume_size   #20
    delete_on_termination   = var.delete_on_termination
  }

  user_data = "${file(var.user_data)}"

  tags = merge(
    {
      Name          = "${var.environment}-${var.application}-${var.instance_name}"
      Environment   = var.environment
      Owner         = var.owner
      Application   = var.application
    },
    var.tags
  )
}
