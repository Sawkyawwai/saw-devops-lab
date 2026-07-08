resource "aws_key_pair" "devops" {
  key_name   = "devops-lab-key"
  public_key = file("../ssh/devops-lab-key.pub")

  tags = {
    Name = "devops-lab-key"
  }
}
