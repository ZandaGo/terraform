module "ec2" {

  source = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = local.ec2_name

  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.small"
  subnet_id                   = module.vpc.public_subnets.0 
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  key_name                    = "mymac"

  tags = {
    Terraform = "true"
  } 
}
