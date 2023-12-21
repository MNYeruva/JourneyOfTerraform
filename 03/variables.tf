variable "AMI_ID" {
    type = string # datatype
    default = "ami-03265a0778a880afb"
}

variable "INSTANCE_NAMES" {
    type = list
    default = ["MongoDB","Cart","Catalogue","User","Redis","MySQL","RabbitMQ","Shipping","Payment","Web"]
}

variable "ZONE_ID" {
    default = "Z00388491P1FW72F82KF"
}