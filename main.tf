# Creating Ssh Auth Key
resource "aws_key_pair" "ssh_keypair" {

  key_name   = "${var.project_name}-${var.project_environment}"
  public_key = file("mykey.pub")
  tags = {
    Name = "${var.project_name}-${var.project_environment}"
  }
}

