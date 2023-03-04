resource "aws_instance" "LB_SRV_AZ1" {
  tags = {
    Name = "LB_SRV_AZ1"
  }

  ami               = lookup(var.SVR_ami,var.aws_region)
  availability_zone = data.aws_availability_zones.available.names[0]

  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp2"
  }

  instance_type = var.SRV_SIZE
  key_name      = var.KEY_PAIR

  network_interface {
    network_interface_id = aws_network_interface.LB_SRV_AZ1_eni0.id
    device_index         = 0
  }

}

resource "aws_instance" "WEB_SRV_AZ1" {
  tags = {
    Name = "WEB_SRV_AZ1"
  }

  ami               = lookup(var.SVR_ami,var.aws_region)
  availability_zone = data.aws_availability_zones.available.names[0]

  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp2"
  }

  instance_type = var.SRV_SIZE
  key_name      = var.KEY_PAIR

  network_interface {
    network_interface_id = aws_network_interface.WEB_SRV_AZ1_eni0.id
    device_index         = 0
  }

}

resource "aws_instance" "DB_SRV_AZ1" {
  tags = {
    Name = "DB_SRV_AZ1"
  }

  ami               = lookup(var.SVR_ami,var.aws_region)
  availability_zone = data.aws_availability_zones.available.names[0]

  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp2"
  }

  instance_type = var.SRV_SIZE
  key_name      = var.KEY_PAIR
 
  network_interface {
    network_interface_id = aws_network_interface.DB_SRV_AZ1_eni0.id
    device_index         = 0
  }

}