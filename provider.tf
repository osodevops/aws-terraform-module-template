provider "aws" {
  version = "1.35"
  region  = "eu-west-2"

  # e.g. arn:aws:iam::<<aws-account-id>>:role/Jenkins-Local-Admin
  # renamed role_arn to be the role your profile assumes
  assume_role {
    role_arn     = "<role_arn>"
    session_name = "Terraforming"
  }
}

provider "null" {
  version = "1.0"
}

provider "template" {
  version = "1.0"
}
