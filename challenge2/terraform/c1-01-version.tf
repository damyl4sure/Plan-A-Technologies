# Terraform Block
terraform {
    required_version = ">=0.14"
    required_providers {

      aws = {
        source = "hashicorp/aws"
        version = "~>3.5"
      }

      random = {
        source  = "hashicorp/random"
        version = "3.1.0"
      }

      local = {
        source  = "hashicorp/local"
        version = "2.1.0"
      }

      null = {
        source  = "hashicorp/null"
        version = "3.1.0"
      }

      kubernetes = {
        source  = "hashicorp/kubernetes"
        version = ">= 2.0.1"
      }
    }
}

provider "aws" {
    #shared_config_files = var.shared_config_file
    shared_credentials_file = var.shared_credentials_file
    profile = var.aws_profile
    region = var.aws_region
}