resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/templates/inventory.json.tpl",
  {
    ips = module.docker.docker_ip_address
    names = module.docker.docker_name
  })
  filename = "${var.ansible_inventory}"
}

resource "null_resource" "check_ansible_files" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "./scripts/check_ansible_files.sh"
  }
}

resource "null_resource" "run_ansible" {
  triggers = {
    inventory_file = local_file.ansible_inventory.filename
  }

  provisioner "local-exec" {
    command = "sleep 3m && ansible-playbook -i ${local_file.ansible_inventory.filename} ${var.ansible_playbook_gitlab}"
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
