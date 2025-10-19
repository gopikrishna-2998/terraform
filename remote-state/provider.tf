terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }
  backend "s3" {
    bucket = "devops-bucket2429"
    key    = "remote-state-demo"
    region = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
}

