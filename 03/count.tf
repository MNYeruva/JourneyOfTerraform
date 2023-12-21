resource "aws_instance" "conditions" {
    count = 10
    ami = "var.AMI_ID"
    instance_type = var.INSTANCE_NAMES[count.index] == "MongoDb" || var.INSTANCE_NAMES[count.index] == "MySQL" ? "t3.medium" : "t2.micro"
    tags = {
        Name = var.INSTANCE_NAMES[count.index]    
# MongoDB Cart Catalogue User Redis MySQL RabbitMQ Shipping Payment Web
    }                                            
}

resource "aws_route53_record" "www" {
  count = 10  
  zone_id = var.ZONE_ID
  name    = "${var.INSTANCE_NAMES[count.index]}.${domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.conditions[count.index].private_ip]
}

resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("${path.module}/devops.pub")
}

resource "aws_instance" "file-function" {
    count = 10
    ami = "var.AMI_ID"
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer.key_name
}