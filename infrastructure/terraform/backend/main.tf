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

# Route Table
# The Route Table manages the routes for the VPC, allowing traffic to the internet via the Internet Gateway.
resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
  tags = {
    Name = "group-3-rt-${var.branch_name}"
  }
}

# Public Subnets
# Public subnets are subnets with a direct route to the internet.
resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "group-3-public-sbnt1-${var.branch_name}"
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "group-3-public-sbnt2-${var.branch_name}"
  }
}

# Private Subnets
# Private subnets are subnets without a direct route to the internet.
resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "group-3-private-sbnt1-${var.branch_name}"
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "group-3-private-sbnt2-${var.branch_name}"
  }
}

# Associate Subnets with Route Table
# These associations link the public subnets with the main route table.
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.main.id
}