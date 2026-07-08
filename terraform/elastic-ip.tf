resource "aws_eip" "server" {

  domain = "vpc"

  instance = aws_instance.ubuntu.id

  tags = {
    Name = "devops-lab-eip"
  }
}
