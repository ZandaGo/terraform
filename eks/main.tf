provider "aws" {
      region     = var.region
      access_key = var.access_key
      secret_key = var.secret_key
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "demo-eks-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 6 
  special = false
}
