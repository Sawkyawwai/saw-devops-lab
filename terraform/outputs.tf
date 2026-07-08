output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "server_public_ip" {
  value = aws_eip.server.public_ip
}

output "ssh_command" {
  value = "ssh -i ../ssh/devops-lab-key ubuntu@${aws_eip.server.public_ip}"
}
