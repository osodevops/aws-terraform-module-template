terraform {
  version = "1"

  #bucket   <company name>-<environment>-<aws account id>-state-<aws region> e.g. dell-prod-72836422342-state-eu-west-1
  #key      <module name>/terraform.tfstate
  #region   <aws region> e.g. eu-west-1
  #role_arn role_arn to be the role to assume to access the bucket e.g. arn:aws:iam::<<aws-account-id>>:role/Jenkins-Local-Admin

  backend "s3" {
    encrypt        = true
    bucket         = "<rename>"
    key            = "<rename>/terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
    region         = "<rename>"
    role_arn       = "<rename>"
  }
}

