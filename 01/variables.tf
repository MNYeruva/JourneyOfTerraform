variable "AMI_ID" {
    type = string # datatype
    default = "ami-03265a0778a880afb"

}

variable "INSTANCE_TYPE" {
   # type = string
    default = "t2.micro"
}

variable "SG_NAME" {
    default = "allow-all"
}

variable "CIDR_SG" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        Name = "MongoDB"
        Environment = "DEV"
        Terraform = "true"
        Project = "Roboshop"
        Component = "MongoDB"
    }
}

    }

}