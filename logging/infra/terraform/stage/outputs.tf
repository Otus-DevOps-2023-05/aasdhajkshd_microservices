output "docker_host_instance" {
  description = "The ID of docker instance"
  value = module.docker.host_instance
}

output "docker_host_ip_address" {
  description = "NAT IP address of host instance"
  value = module.docker.host_ip_address[0]
}

output "docker_logging_instance" {
  description = "The ID of docker instance"
  value = module.docker.logging_instance
}

output "docker_logging_ip_address" {
  description = "NAT IP address of logging k8s instance"
  value = module.docker.logging_ip_address[0]
}

output "docker_image_id" {
  description = "Image ID of docker instance"
  value = module.docker.image_id
}
