# resource "aws_instance" "terraform" {
#    ami = "ami-03265a0778a880afb"
#    instance_type = "t2.micro"
#}

 resource "aws_instance" "terraform" {
    ami = "var.AMI_ID"
    instance_type = "var.INSTANCE_TYPE"
}