terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.6.2"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

