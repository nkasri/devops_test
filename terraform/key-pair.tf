# SSH key - pet clinic

resource "aws_key_pair" "pet-clinic-key" {
  key_name = "pet-clinic"
  public_key = file("./pet-clinic.pem")
}
