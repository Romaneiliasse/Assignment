resource "aws_eip" "eip1-LB" {
  vpc = true
}

resource "aws_eip" "eip2-WEB" {
  vpc = true
}

resource "aws_eip" "eip3-DB" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc_LB_AZ1" {
  network_interface_id = aws_network_interface.LB_SRV_AZ1_eni0.id
  allocation_id        = aws_eip.eip1-LB.id
}

resource "aws_eip_association" "eip_assoc_WEB_AZ1" {
  network_interface_id = aws_network_interface.WEB_SRV_AZ1_eni0.id
  allocation_id        = aws_eip.eip2-WEB.id
}

resource "aws_eip_association" "eip_assoc_DB_AZ1" {
  network_interface_id = aws_network_interface.DB_SRV_AZ1_eni0.id
  allocation_id        = aws_eip.eip3-DB.id
}