resource "aws_security_group" "SG_LB_SRV" {
  vpc_id = aws_vpc.VPC_Prod.id
  tags = {
    Name = "SG_LB_SRV"
  }

  ingress {
    cidr_blocks = [var.workstation_IP]
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
  }

  ingress {
    cidr_blocks = [var.workstation_IP]
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
  }

  name   = "Inbound_LB_SG"
}

resource "aws_security_group" "SG_WEB_SRV" {
  vpc_id = aws_vpc.VPC_Prod.id
  tags = {
    Name = "SG_WEB_SRV"
  }

  ingress {
    cidr_blocks = [var.workstation_IP]
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
  }

  name   = "Inbound_WEB_SG"
}

resource "aws_security_group" "SG_DB_SRV" {
  vpc_id = aws_vpc.VPC_Prod.id
  tags = {
    Name = "SG_DB_SRV"
  }

  ingress {
    cidr_blocks = [var.workstation_IP]
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
  }

  name   = "Inbound_DB_SG"
}