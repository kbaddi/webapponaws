variable "region" {
 default = "us-west-2"
}
variable "AmiLinux" {
 type = "map"
 default = {
 us-east-1 = "ami-b73b63a0"
 us-west-2 = "ami-5ec1673e"
 eu-west-1 = "ami-9398d3e0"
 }
 description = "I add only 3 regions (Virginia, Oregon, Ireland) to show the map feature but you can add all the r"
}
variable "aws_access_key" {
 default = ""
 description = "the user aws access key"
}
variable "aws_secret_key" {
 default = ""
 description = "the user aws secret key"
}
variable "vpc-fullcidr" {
 default = "10.0.0.0/16"
 description = "the vpc cdir"
}
variable "Subnet-Publicsubnet-CIDR" {
 default = "10.0.1.0/24"
 description = "the cidr of the subnet"
}
variable "Subnet-Privatesubnet-CIDR" {
 default = "172.28.3.0/24"
 description = "the cidr of the subnet"
}
variable "key_name" {
 default = ""
 description = "the ssh key to use in the EC2 machines"
}
