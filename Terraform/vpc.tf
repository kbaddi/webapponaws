resource "aws_vpc" "myproject_vpc" {
    name = "myproject_vpc"
    cidr_block = "${var.vpc-fullcidr}"
}


resource "aws_subnet" "Publicsubnet" {
 vpc_id = "${aws_vpc.myproject_vpc.id}"
 cidr_block = "${var.Subnet-Publicsubnet-CIDR}"
 tags {
 Name = "Publicsubnet"
 }
 availability_zone = "${data.aws_availability_zones.available.names[0]}"
}
resource "aws_route_table_association" "Publicsubnet" {
 subnet_id = "${aws_subnet.Publicsubnet.id}"
 route_table_id = "${aws_route_table.public.id}"
}
resource "aws_subnet" "Privatesubnet" {
 vpc_id = "${aws_vpc.myproject_vpc.id}"
 cidr_block = "${var.Subnet-Privatesubnet-CIDR}"
 tags {
 Name = "Privatesubnet"
 }
 availability_zone = "${data.aws_availability_zones.available.names[1]}"
}
resource "aws_route_table_association" "Privatesubnet" {
 subnet_id = "${aws_subnet.Privatesubnet.id}"
 route_table_id = "${aws_route_table.private.id}"
}
