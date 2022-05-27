provider "aws" {
  alias   = "wecarelogistics"
  region  = "ap-south-1"
}



data "aws_ssoadmin_instances" "wecarelogistics" {}

resource "aws_ssoadmin_permission_set" "wecarelogistics" {
  name         = "wecarelogistics"
  instance_arn = tolist(data.aws_ssoadmin_instances.wecarelogistics.arns)[0]
}

resource "aws_ssoadmin_managed_policy_attachment" "wecarelogistics1" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.wecarelogistics.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/AWSGrafanaAccountAdministrator"
  permission_set_arn = aws_ssoadmin_permission_set.wecarelogistics.arn
}

resource "aws_ssoadmin_managed_policy_attachment" "wecarelogistics2" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.wecarelogistics.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/AWSSSOMemberAccountAdministrator"
  permission_set_arn = aws_ssoadmin_permission_set.wecarelogistics.arn
}

resource "aws_ssoadmin_managed_policy_attachment" "wecarelogistics3" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.wecarelogistics.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/AWSSSODirectoryAdministrator"
  permission_set_arn = aws_ssoadmin_permission_set.wecarelogistics.arn
}

