provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "daniel-s3bucket-03march"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "daniel-03march-dblocks"
    encrypt        = true
  }
}
