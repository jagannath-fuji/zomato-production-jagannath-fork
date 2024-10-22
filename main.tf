# Creating Ssh Auth Key
resource "aws_key_pair" "ssh_keypair" {

  key_name   = "${var.project_name}-${var.project_environment}"
  public_key = file("mykey.pub")
  tags = {
    Name = "${var.project_name}-${var.project_environment}"
  }
}

# Creating Frontend Security group
resource "aws_security_group" "frontend" {

  name        = "${var.project_name}-${var.project_environment}-frontend"
  description = "${var.project_name}-${var.project_environment}-frontend"
  vpc_id      = var.default_vpc_id
  tags = {
    Name = "${var.project_name}-${var.project_environment}-frontend"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
