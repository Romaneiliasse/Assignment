resource "aws_subnet" "VPC_subnet" {
  tags = {
    Name = "VPC_subnet"
    Desciption = "Subnet - AZ1"
  }
  availability_zone = data.aws_availability_zones.available.names[0]
  cidr_block        = var.VPC_subnet_Size_Value
  vpc_id            = aws_vpc.VPC_Prod.id
}