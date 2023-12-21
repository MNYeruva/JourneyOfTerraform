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
  name    = var.INSTANCE_NAMES[count.index].mnyeruva.online
  type    = "A"
  ttl     = 1
  records = [aws_eip.lb.public_ip]
}
