output "private_ips" {
    value = aws_instance_conditions.private_ips[*]

}