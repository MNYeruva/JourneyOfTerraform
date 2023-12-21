resource "aws_instance" "conditions" {
    ami = "var.AMI_ID"
    instance_type = var.INSTANCE_NAME == "MongoDB" ? "t3.medium" : "t2.micro"
}