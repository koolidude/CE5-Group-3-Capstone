provider "aws" {
  region = "us-east-1"
}

# VPC
# The VPC is the main networking component where all resources will be launched.
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "group-3-vpc-${var.branch_name}"
  }
}

# Internet Gateway
# The Internet Gateway enables the VPC to connect to the internet.
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "group-3-igws-${var.branch_name}"
  }
}