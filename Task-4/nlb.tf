provider "aws" {
    region = "us-east-1"
}

resource "aws_lb" "network-lb" {
    name = "network-lb"
    load_balancer_type = "network"
    subnets = ["subnet-0434e0c836f68602f"]
}
