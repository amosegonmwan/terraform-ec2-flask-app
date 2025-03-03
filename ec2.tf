# Key Pair
resource "aws_key_pair" "example" {
  key_name   = "terraform-demo-key"
  public_key = file(var.public_key_path)
}

# EC2 Instance
resource "aws_instance" "server" {
  ami                    = "ami-0261755bbcb8c4a84"
  instance_type          = var.instance_type
  key_name               = aws_key_pair.example.key_name
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.sub1.id
  user_data              = file("user_data.sh")

  tags = {
    Name = "webserver"
  }
}
