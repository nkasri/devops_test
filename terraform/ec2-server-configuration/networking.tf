#vpc creation

resource "aws_vpc" "pet-clinic" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "VPC petClinic"
  }
}

#Internet gateway
resource "aws_internet_gateway" "pet-clinic" {
  vpc_id = aws_vpc.pet-clinic.id
}

# Route table
resource "aws_route_table" "pet-clinic-rt" {
  vpc_id = aws_vpc.pet-clinic.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.pet-clinic.id
      }

      tags = {
        Name = "Route Table for petClinic app"
      }
}

#subnet

resource "aws_subnet" "subnet-public-pet-clinic" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.pet-clinic.id

  tags = {
    Name = "Pet Clinic Subnet"
  }
}

# Route table association

resource "aws_route_table_association" "pet-clinic-subnet" {
  route_table_id = aws_subnet.subnet-public-pet-clinic.id
  subnet_id = aws_subnet.subnet-public-pet-clinic.id
}


# security group

resource "aws_security_group" "allow-web-traffic" {
  name = "allow-web-traffic"
  description = "Allow HTTP / HTTPS inbound traffic"

   ingress {
    description = "SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Jenkins"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Network interface

resource "aws_network_interface" "pet-clinic" {
  subnet_id = aws_subnet.subnet-public-pet-clinic.id
  security_groups = [aws_security_group.allow-web-traffic]

}

resource "aws_eip" "clinic-web-app" {
  vpc = true
  network_interface = aws_network_interface.pet-clinic.id
  associate_with_private_ip = "10.0.1.10"
  depends_on = [
    aws_internet_gateway.pet-clinic
  ]
}