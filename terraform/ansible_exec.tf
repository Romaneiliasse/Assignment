resource "null_resource" "Ansible_Deploy_configuration" {
  depends_on = [local_file.tf_ansible_vars_file_new]
  provisioner "local-exec" {
        command =  "ANSIBLE_FORCE_COLOR=1 ansible-playbook ../ansible/playbook.yml -i ../ansible/inventory.yml"
  }
}