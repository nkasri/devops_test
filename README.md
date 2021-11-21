**PETCLINIC APP**
_First Part:_
Commands to create the ec2 instance:
 - Generate the key to be used in the creation of the ec2
run :
`_./generate-ssh-key.sh_`
   aws access id and AWS secret Key need to be configured in **terraform.tfvars** file!
   
 - Create the EC2 instance with terraform
`cd terrafom
terraform init
terraform plan
terrafom apply`

_Second Part:_
Access the application:
run :
`terraform outputs`
Using the ip address of the instance run it on the browser:

_Third Part:_
The ci/cd pipeline with jenkins:
prerequisite:
- Up and running jenkins server.
- aws cli installed.
- configure docker hub(or any repository) credentials to push images.
- Edit the already created _INSTANCE_ID_ in the jenkins file.

  







