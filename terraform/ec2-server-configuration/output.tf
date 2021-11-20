output "instance-id" {
  value = aws_instance.kayrros_intership.id
}

output "instance_public_ip" {
  value = aws_instance.kayrros_intership.public_ip
}
output "instance-private-ip" {
  value = aws_instance.kayrros_intership.private_ip
}
