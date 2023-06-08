output "public_ip" {
  description = "public ip of the instance"
  value = aws_instance.ec2_instance.public_ip
}

