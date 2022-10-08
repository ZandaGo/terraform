provider "aws" {
      region     = var.region
      access_key = var.access_key
      secret_key = var.secret_key
}

data "aws_availability_zones" "available" {}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name" 
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}

locals {
  ec2_name = "ec2-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
}
