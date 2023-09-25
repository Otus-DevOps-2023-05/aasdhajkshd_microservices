resource "yandex_compute_instance" "docker" {

  count = var.instance_count

  allow_stopping_for_update = true

  name        = "docker-${count.index}"
  platform_id = "standard-v2"

  labels = {
    tags = "docker"
  }

  metadata = {
    # user-data = file("meta.yaml")
    ssh-keys = "var.ssh_user:${file(var.public_key_path)}"
  }

  resources {
    cores         = 2
    memory        = 8
    core_fraction = 100
  }

  boot_disk {
    initialize_params {
      image_id = var.docker_image_id
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
