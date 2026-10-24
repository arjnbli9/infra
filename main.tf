resource "aws_instance" "web" {
  instance_type = "t3.micro"
  ami           = "ami-0c7632fb77f35db43"
  tags = {
    Name = "anton-putra-instance"
  }
}

output "instance_public_ip" {
  description = "public ip of ec2 instance"
  value       = aws_instance.web.public_ip
}
