output "public_ip" {
  description = "public ip of the instance"
  value       = aws_instance.app_server.public_ip
}

