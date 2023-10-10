resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/templates/inventory.json.tpl",
  {
    master_ips = module.kubernetes.master_ip_address
    master_names = module.kubernetes.master_instance[1]
    worker_ips = module.kubernetes.worker_ip_address
    worker_names = module.kubernetes.worker_instance[1]
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

resource "null_resource" "image_id" {
  triggers = {
    image_value = split(":", element(var.builds, 0).artifact_id)[0]
  }
}
