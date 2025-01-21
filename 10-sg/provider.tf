terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
  }

  backend "s3" {
    bucket         = "supra-remote-state"
    key            = "expense-sg-eks"
    region         = "us-east-1"
    dynamodb_table = "supra-locking"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}