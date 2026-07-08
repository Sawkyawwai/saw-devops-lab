resource "aws_instance" "ubuntu" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.ec2.id
  ]

  key_name = aws_key_pair.devops.key_name

  associate_public_ip_address = true

  tags = {
    Name = "devops-lab-server"
  }
}
