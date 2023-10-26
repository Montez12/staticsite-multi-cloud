terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }
  backend "s3" {
    bucket         = "porquevcfalouisso"
    key            = "terraform.tfstate"
    dynamodb_table = "porquevcfalouisso"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}