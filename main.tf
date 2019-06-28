provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example" {
  ami = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  count = 2
  tags {
    Name = "example"
  }
}
