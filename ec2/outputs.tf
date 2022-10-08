output "region" {
  description = "AWS region"
  value       = var.region
}

output "vpc_id" {
  description = "VPC id"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "Subnet id"
  value       = module.vpc.public_subnets
}

output "sg_id" {
  description = "Security Group id"
  value       = aws_security_group.ec2_sg.id
}

output "ec2_private_dns" {
  description = "The private DNS name assigned to the instance"
  value       = module.ec2.private_dns
}

output "ec2_public_dns" {
  description = "The public DNS name assigned to the instance"
  value       = module.ec2.public_dns
}

output "ec2_public_ip" {
  description = "The public IP address assigned to the instance"
  value       = module.ec2.public_ip
}

output "ec2_id" {
  description = "The ID of the instance"
  value       = module.ec2.id
}
