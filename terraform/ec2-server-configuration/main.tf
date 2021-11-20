resource "aws_instance" "kayrros_intership" {
  ami = var.ami-id
  instance_type = var.instance-type
  key_name = var.key-pair
  associate_public_ip_address = true
  user_data = templatefile("${path.module}/user_data.sh", {repository_url = var.ecr-url})
  network_interface {
    device_index         = var.device-index
    network_interface_id = var.network-interface-id
  }
  tags = {
    Name = var.name
  }

}
