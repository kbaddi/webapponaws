resource "aws_instance" "webapp" {
 ami = "${lookup(var.AmiLinux, var.region)}"
 instance_type = "t2.micro"
 associate_public_ip_address = "true"
 subnet_id = "${aws_subnet.Publicsubnet.id}"
 vpc_security_group_ids = ["${aws_security_group.FrontEnd.id}"] key_name = "${var.key_name}"
 tags {
 Name = "phpapp"
 }

}


resource "aws_instance" "database" {
 ami = "${lookup(var.AmiLinux, var.region)}"
 instance_type = "t2.micro"
 associate_public_ip_address = "false"
 subnet_id = "${aws_subnet.Privatesubnet.id}"
 vpc_security_group_ids = ["${aws_security_group.Database.id}"] key_name = "${var.key_name}"
 tags {
 Name = "database"
 }

}