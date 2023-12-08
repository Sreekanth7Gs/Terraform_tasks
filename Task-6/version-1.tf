provider "aws" {
   region = "us-east-1"  
}

resource "aws_iam_group" "development" {
  name = var.aws_iam_group
}

resource "aws_iam_user" "user-1" {
  name = var.aws_iam_user
}

resource "aws_iam_user_group_membership" "dev" {
  groups = [ var.aws_iam_group ]
  user =  var.aws_iam_user 
}
