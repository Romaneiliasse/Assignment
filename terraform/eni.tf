resource "aws_network_interface" "LB_SRV_AZ1_eni0" {
  subnet_id   = aws_subnet.VPC_subnet.id
  private_ips = ["192.168.0.11"]
  security_groups = [aws_security_group.SG_LB_SRV.id]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_network_interface" "WEB_SRV_AZ1_eni0" {
  subnet_id   = aws_subnet.VPC_subnet.id
  private_ips = ["192.168.0.12"]
  security_groups = [aws_security_group.SG_WEB_SRV.id]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_network_interface" "DB_SRV_AZ1_eni0" {
  subnet_id   = aws_subnet.VPC_subnet.id
  private_ips = ["192.168.0.13"]
  security_groups = [aws_security_group.SG_DB_SRV.id]

  tags = {
    Name = "primary_network_interface"
  }
}