provider "aws" {
    alias = "vpc"
    region = "us-east-1"
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
    availability_zone = "us-east-1a"
}

resource "aws_internet_gateway" "tf_idw" {
    vpc_id = aws_vpc.terraform_vpc.id
    
}

resource "aws_route_table" "tf_rt" {
   vpc_id = aws_vpc.terraform_vpc.id
  
}

resource "aws_route_table_association" "tf_rta_sn1" {
  subnet_id      = aws_subnet.sn-1.id
  route_table_id = aws_route_table.tf_rt.id
}

resource "aws_route" "tf_rt_internet" {
  route_table_id         = aws_route_table.tf_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.tf_idw.id
}
