#
##### ------ CONFIGURATION ------ #####
##
##### ------ CONFIGURATION ------ #####
##
##### ------ CONFIGURATION ------ #####
##

#
############### ------ AWS CREDENTIALS ------ ###############
#
#

variable "AWS_ACCESS_KEY" {
  default = "XXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "AWS_SECRET_KEY" {
  default = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

#
############### ------ Workstation PUBLIC IP (From where we deploy and test) ------ ###############
#
#

variable "workstation_IP" {
  default = "XXXX/32"

}

##### ------ AWS REGION ------ #####

variable "aws_region" {
  default = "eu-west-2"
}

##### ------ AWS EC2 KEY PAIR ------ #####


variable "KEY_PAIR" {
  default = "key"
##### ------ For Security Reasons, this will be created manually ------ #####

}

##### ------ AWS EC2 AMI ------ #####

variable "SVR_ami" {
    type = map
    default = {
        "eu-west-2"      = "ami-09a2a0f7d2db8baca"
    }
}

##### ------ AWS EC2 size ------ #####

variable "SRV_SIZE" {
  default = "t2.micro"
}

#
#
############### ------ VPC/Subnet Size ------ ###############
#
#

variable "VPC_Size_Value" {
  default = "192.168.0.0/16"
}

variable "VPC_subnet_Size_Value" {
  default = "192.168.0.0/24"
}

#
##### ------ CONFIGURATION ------ #####
##
##### ------ CONFIGURATION ------ #####
##
##### ------ CONFIGURATION ------ #####
#