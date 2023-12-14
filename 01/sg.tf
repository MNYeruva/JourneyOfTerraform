resource "aws_security_group" "allow_all" {
    name = "var.SG_NAME"
    Description = "allowing all ports"
}

  ingress {
    description      = "allowing all inbound traffic"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }