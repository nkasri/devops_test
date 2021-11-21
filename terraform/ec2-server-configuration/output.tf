output "instance-id" {
  value = aws_instance.kayrros.id
}

output "instance_public_ip" {
  value = aws_instance.kayrros.public_ip
}
output "instance-private-ip" {
  value = aws_instance.kayrros.private_ip
}
