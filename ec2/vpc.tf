module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"

  name = "ec2-vpc"

  cidr = "172.31.0.0/16"
  azs  = slice(data.aws_availability_zones.available.names, 0, 1)

  public_subnets = ["172.31.10.0/24"]

  enable_dns_support   = true
  enable_dns_hostnames = true

}
