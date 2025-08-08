terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.7.0"
    }
  }

  backend "s3" {
    bucket         = "81p-remote-state"
    key            = "expense-tools"
    region         = "us-east-1"
    dynamodb_table = "81s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}