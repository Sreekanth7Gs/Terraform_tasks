provider "aws" {
    region = var.region
}

resource "aws_vpc" "terraform_vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "sn-1" {
    vpc_id = aws_vpc.terraform_vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "sn-2" {
    vpc_id = aws_vpc.terraform_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1b"
}
