output "staging_instance_id" {
  value = aws_instance.staging_instance.private_ip
}

output "bastion_host_ip" {
  value = aws_instance.bastion_host.public_ip
}
