# tflint-ignore: terraform_unused_declarations
variable "cloud_id" {
  type        = string
  description = "Cloud"
}

variable "folder_id" {
  type        = string
  description = "Folder"
}

variable "zone" {
  type        = string
  description = "Zone"
  default     = "ru-central1-a"
}

variable "public_key_path" {
  type        = string
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  type        = string
  description = "Path to the private key used for ssh access"
}

variable "docker_image_id" {
  type        = string
  description = "Disk image for docker"
}

variable "subnet_id" {
  type        = string
  description = "Subnets for modules"
}

variable "service_account_key_file" {
  type        = string
  description = "Key .json"
}

variable "instance_count" {
  type        = number
  default     = 1
  description = "Number of instances"
}

variable "access_key" {
  type        = string
  description = "Path to the storage access key"
}

variable "secret_key" {
  type        = string
  description = "Path to the storage secret key"
}

variable "docker_instance_id" {
  type        = list(string)
  description = "Docker instance ID"
  default     = []
}

variable "docker_instance_hostname" {
  type        = list(string)
  description = "Docker instance hostname"
  default     = []
}

variable "docker_ip_address" {
  type    = list(string)
  default = []
}

variable "ansible_inventory" {
  type = string
  description = "Ansible dynamic inventory"
}

variable "ansible_config" {
  type = string
  description = "Ansible config file"
}

variable "ansible_playbook_reddit" {
  type = string
  description = "Ansible playbook reddit.yml"
}
