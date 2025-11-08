########################################
# Provider Configuration
########################################
provider "aws" {
  region = "eu-central-1"
}

########################################
# VPC
########################################
resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "project-1-main-vpc"
  }
}