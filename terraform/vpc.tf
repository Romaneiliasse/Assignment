resource "aws_vpc" "VPC_Prod" {
  cidr_block           = var.VPC_Size_Value
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  instance_tenancy     = "default"
  tags = {
    Name = "VPC_Prod"
  }
}