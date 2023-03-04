# Export Terraform variable values to an Ansible var_file
resource "local_file" "tf_ansible_vars_file_new" {
  content = <<-DOC
    # Ansible vars_file containing variable values from Terraform.

### Interfaces IPs
    tf_LB_PUB_IP_PROD: ${aws_eip_association.eip_assoc_LB_AZ1.public_ip}
    tf_WEB_PUB_IP_PROD: ${aws_eip_association.eip_assoc_WEB_AZ1.public_ip}
    tf_DB_PUB_IP_PROD: ${aws_eip_association.eip_assoc_DB_AZ1.public_ip}

    DOC
  filename = "../ansible/group_vars/all/variables.yml"
}