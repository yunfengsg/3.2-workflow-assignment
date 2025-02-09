provider "aws" {
  region = "ap-southeast-1"
}

terraform {
    required_version = ">= 1.0" 
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
    key    = "yyf-project-s3-tf-ci.tfstate"  #Change this
    region = "ap-southeast-1"
  }
}

data "aws_caller_identity" "current" {}



resource "aws_s3_bucket" "s3_tf" {
  bucket = "${local.name_prefix}-s3-tf-bkt-${local.account_id}"
}
