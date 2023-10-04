variable "key_file" {
  type    = string
  default = ".secrets/packer.json"
}

variable "folder_id" {
  type    = string
  default = "b1g0da3u1gqk0nansi59"
}

variable "subnet_id" {
  type    = string
  default = "e9bi9oji8ljojstbt6cp"
}

variable "platform_id" {
  type    = string
  default = "standard-v2"
}

variable "zone" {
  type    = string
  default = "ru-central1-a"
}

variable "image" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "image_family" {
  type    = string
  default = "k8s-base"
}

variable "ssh_user" {
  type    = string
  default = "ubuntu"
}

variable "ssh_key" {
  type    = string
  default = "~/.ssh/id_rsa-appuser.pub"
}
