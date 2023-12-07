provider "aws" {
region = "us-east-1"
}

resource "aws_iam_group" "terraform_group" {
  name = var.aws_iam_group
}

resource "aws_iam_policy" "Ec2readonly" {
  policy = var.aws_iam_policy
}



resource "aws_iam_group_policy_attachment" "Ec2readonly" {
   group = var.aws_iam_group
   policy_arn = aws_iam_policy.Ec2readonly.arn
}
