provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance_tf" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
}
