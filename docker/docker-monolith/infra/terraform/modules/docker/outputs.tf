output "docker_instance_id" {
  value = yandex_compute_instance.docker[*].id
}

output "docker_name" {
  value = yandex_compute_instance.docker[*].name
}

output "docker_ip_address" {
  value = [for instance in yandex_compute_instance.docker : instance.network_interface[0].nat_ip_address]
}
