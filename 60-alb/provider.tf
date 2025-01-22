terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.0"
    }
  }

  backend "s3" {
    bucket         = "supra-remote-state-dev"
    key            = "expense-alb-dev"
    region         = "us-east-1"
    dynamodb_table = "supra-locking-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}