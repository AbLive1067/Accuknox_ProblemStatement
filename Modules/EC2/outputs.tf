
output "instance_state" {
  description = "The state of the ec2 instance "
  value       = aws_instance.Instance.*.instance_state
}

output "instance_public_dns" {
  description = "The Public DNS address of the ec2 instance"
  value       = aws_instance.Instance.*.public_dns
}

output "instance_public_ip" {
  description = "The Public Ip address of the ec2 instance"
  value       = aws_instance.Instance.*.public_ip
}

output "instance_private_ip" {
  description = "The Private Ip address of the ec2 instance"
  value = aws_instance.Instance.*.private_ip
}

output "instance_id" {
  description = "id of EC2 Instance"
  value = aws_instance.Instance.*.id
}

