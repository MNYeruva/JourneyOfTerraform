resource "aws_security_group" "allow_all" {
    name = "var.SG_NAME"
    Description = "allowing all ports"
}

  ingress {
    description      = "allowing all inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.CIDR_SG
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # all protocols
    cidr_blocks      = var.CIDR_SG
  }