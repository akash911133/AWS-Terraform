#############  Ouputs we want 

output "public_ip" {
  value = aws_instance.My-Linux-1.public_ip
}

output "private_ip" {
  value = aws_instance.My-Linux-1.private_ip
}