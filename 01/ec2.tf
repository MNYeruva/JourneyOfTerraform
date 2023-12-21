# resource "aws_instance" "terraform" {
#    ami = "ami-03265a0778a880afb"
#    instance_type = "t2.micro"
#}

 resource "aws_instance" "terraform" {
    ami = "var.AMI_ID"
    instance_type = "var.INSTANCE_TYPE"
    security_groups = [aws.security_group.allow_all.name]

#    tags = {
#        Name = "MongoDB"
#        Environment = "DEV"
#        Terraform = "true"
#        Project = "Roboshop"
#        Component = "MongoDB"
#    }
}