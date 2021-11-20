variable "name" {

}
variable "ami-id" {
    type = string
}

variable "instance-type" {
    type = string
    default = "t2.micro"
}

variable "key-pair" {
    type = string
}

variable "ecr-url" {
    type = string
}

variable "network-interface-id" {
  type = string
}

variable "device-index" {
  type = number
}