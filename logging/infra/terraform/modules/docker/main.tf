locals { timestamp = replace(timestamp(), "[- TZ:]", "")}

data "yandex_compute_image" "img" {
  family = var.image_family
}

resource "yandex_compute_instance" "host" {

  timeouts {
    create = "30m"
    delete = "2h"
  }

  count = var.instance_count["host"]

  allow_stopping_for_update = true

  name        = "${var.cluster_name}-${var.instance_tag[0]}-${count.index}"
  platform_id = "standard-v2"

  labels = {
    tags = "${var.instance_tag[0]}"
  }

  metadata = {
    user-data = file("meta.yaml")
  }

  resources {
    cores         = var.instance_resources["cores"]
    memory        = var.instance_resources["memory"]
    core_fraction = var.instance_resources["fraction"]
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.img.id
      type = var.disk_type
      size = var.disk_size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  connection {
    type        = "ssh"
    host        = self.network_interface[0].nat_ip_address
    user        = "var.ssh_user"
    agent       = false
    private_key = file(var.private_key_path)
  }
}

resource "yandex_compute_instance" "logging" {

  timeouts {
    create = "60m"
    delete = "2h"
  }

  count = var.instance_count["logging"]

  allow_stopping_for_update = true

  name        = "${var.cluster_name}-${var.instance_tag[1]}-${count.index}"
  platform_id = "standard-v2"

  labels = {
    tags = "${var.instance_tag[1]}"
  }

  metadata = {
    ssh-keys = "var.ssh_user:${file(var.public_key_path)}"
  }

  resources {
    cores         = var.instance_resources["cores"]
    memory        = var.instance_resources["memory"]
    core_fraction = var.instance_resources["fraction"]
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.img.id
      type = var.disk_type
      size = var.disk_size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

}
