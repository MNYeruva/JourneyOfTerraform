variable "AMI_ID" {
    type = string # datatype
    default = "ami-03265a0778a880afb"
}

variable "INSTANCE_TYPE" {
   # type = string
    default = "t2.micro"
}

variable "INSTANCE_NAME" {
    type = string
    default = "MongoDB"
}