resource "aws_instance" "Demo" {
  ami           = "ami-0e8a34246278c21e4"
  count         = 2
  instance_type = var.instance_type
  tags = {
    Name      = "Test-dev-server"
    Terraform = "true"
    Owner     = "dev"
    env = "dev"
  }
}