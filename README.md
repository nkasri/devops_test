**PETCLINIC APP**
How to use the project
This project consist of a flask application called petclinic 
after running the next steps:
- Creation of an EC2 instance in AWS
- Flask application up and running on that instance
- Jenkins pipeline to deploy the code in the ec2 instance



_First Part:_
Commands to create the ec2 instance:

 - Generate the key to be used in the creation of the ec2 run :
`chmod +x generate-ssh-key`
   
`_./generate-ssh-key.sh_`
   
aws access id and AWS secret Key need to be configured in **terraform.tfvars** file!
   
 - Create the EC2 instance with terraform:

`cd terrafom`
`terraform init`
`terraform plan`
`terrafom apply`

_Second Part:_
Access the application:
run :
`terraform outputs`
Using the ip address of the instance run it on the browser:
@ip:80

_Third Part:_
The ci/cd pipeline with jenkins:
prerequisite:
- Up and running jenkins server.
- aws cli installed.
- Python installed  
- configure docker hub(or any repository) credentials 
  to push images and edit the environment variable **REGISTRY_CREDENTIALS_ID**.
- Edit the already created **_INSTANCE_ID_** in the jenkins file.

  







