variable "aws_iam_group" {
  type = string
  default = "terraform_group"
}

variable "aws_iam_policy" {
  default = <<JSON
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:Describe*",
      "Resource": "*"
    }
  ]
}
JSON
}