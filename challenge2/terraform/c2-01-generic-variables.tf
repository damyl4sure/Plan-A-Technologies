# Provisioning region
variable "aws_region" {
    description = "Region in which AWS resources would be created"
    type = string
    default = "us-east-1"
}

variable "aws_profile" {
    description = "AWS configure profile accesskey & secret ID"
    type = string
    default = "lab2022"
}

variable "shared_config_file" {
    description = "path to AWS config file"
    type = string
    default = "~/.aws/config"
}

variable "shared_credentials_file" {
    description = "Path to AWS credential file"
    type = string
    default = "~/.aws/credentials"
}

# Environment Variable
variable "environment" {
    description = "Environment Variable used as a prefix"
    type = string
    default = "challenge2-dev"
}

variable "name" {
    description = "Resources name"
    type = string
    default = "plan-a-tech-challenge2" 
}