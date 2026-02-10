resource "aws_instance" "ec2-example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags = {
    Name = "ec2-eg"
  }
}