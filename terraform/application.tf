module "application-server" {
  source = "./ec2-server-configuration"
  ami-id = "ami-0279c3b3186e54acd"
  key-pair = aws_key_pair.pet-clinic-key.key_name
  name = "Pet Clinic"
  device-index = 0
  network-interface-id = aws_network_interface.pet-clinic.id
  repository_url = "repo url"
}