resource "aws_instance" "ec2-eg" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags = var.tag
}
resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow all"
  #vpc_id      = aws_vpc.main.id   # attach to your VPC

  # Inbound rules
  ingress {
    description = "Allow SSH"
    from_port   = var.inbound
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # open to all (use cautiously!)
  }

  # Outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"            # all protocols
    cidr_blocks = ["0.0.0.0/0"]   # allow all outbound
  }

  tags = {
    Name = "all-ag"
  }
}
