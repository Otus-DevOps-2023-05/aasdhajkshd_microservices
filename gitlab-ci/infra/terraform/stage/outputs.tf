output "docker_instance_id" {
  description = "The ID of docker instance"
  value = module.docker.docker_instance_id
}

output "docker_ip_address" {
  description = "NAT IP address of docker instance"
  value = module.docker.docker_ip_address
}

output "docker_name" {
  value = module.docker.docker_name
}
