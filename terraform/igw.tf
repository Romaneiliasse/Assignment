resource "aws_internet_gateway" "MAIN-IGW" {
  vpc_id = aws_vpc.VPC_Prod.id

  tags = {
    Name = "VPC-IGW"
  }
}