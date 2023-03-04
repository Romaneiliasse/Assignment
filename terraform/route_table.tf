resource "aws_default_route_table" "VPC_Prod-MainRT" {
  default_route_table_id = aws_vpc.VPC_Prod.main_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.MAIN-IGW.id
  }

  tags = {
    Name = "VPC-MAINRT"
  }
}