resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/templates/inventory.json.tpl",
  {
    host_ips = module.docker.host_ip_address
    host_names = module.docker.host_instance[1]
    logging_ips = module.docker.logging_ip_address
    logging_names = module.docker.logging_instance[1]
  })
  filename = "${var.ansible_inventory}"
}

resource "null_resource" "run_ansible" {
  triggers = {
    inventory_file = local_file.ansible_inventory.filename
  }

  provisioner "local-exec" {

    command = "ansible-playbook -T 300 -i ${local_file.ansible_inventory.filename} ${var.ansible_playbook}"
    environment = {
      ANSIBLE_CONFIG = "${var.ansible_config}"
      ANSIBLE_HOST_KEY_CHECKING = "False"
    }
  }
}
