terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "devops-recipe-app-api-tf-state"
    key            = "tf-state-setup"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "devops-recipe-app-api-tf-lock"
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManagedBy   = "Terraform/setup"
    }
  }
}