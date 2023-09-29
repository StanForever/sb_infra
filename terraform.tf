terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  cloud {
    hostname     = "app.terraform.io"
    organization = "secure_bank_aws_infra"

    workspaces {
      name = "sb_infra"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment = "SB Dev Infra"
      Project     = "AWS Terraform North Virginia"
    }
  }
}