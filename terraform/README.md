**Infrastructure configuration**
This code creat an EC2 instance along with all the
networking resources needed 

**1. Networking:**
VPC, subnet, security groups configuration files

**2.key-pair:**
Key-pair declaration tu be used in the ec2 instance creation.

**3. EC2-server-configuration:**
main: ec2 instance declaration
variables: Variable to describe the EC2 instance
output: Containing the address ip of the instance
user_data: data to initialize the instance with 
    - install Docker
    - Run the flask application


**4.Providers:**
aws provider configuration


**4.terraform.tfvars:**
To setup the variables in variable.tf






