output "host_instance" {
  value = [yandex_compute_instance.host[*].id, yandex_compute_instance.host[*].name]
}

output "host_ip_address" {
  value = [for instance in yandex_compute_instance.host: instance.network_interface[0].nat_ip_address]
}

output "logging_ip_address" {
  value = [for instance in yandex_compute_instance.logging: instance.network_interface[0].nat_ip_address]
}

output "logging_instance" {
  value = [yandex_compute_instance.logging[*].id, yandex_compute_instance.logging[*].name]
}

output "image_id" {
  value = data.yandex_compute_image.img.image_id
}
