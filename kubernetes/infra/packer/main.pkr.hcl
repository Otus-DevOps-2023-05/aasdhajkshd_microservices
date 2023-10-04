packer {
  required_plugins {
    ansible = {
      source  = "github.com/hashicorp/ansible"
      version = "~> 1"
    }
  }
}

locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }

source "yandex" "kubernetes" {
  disk_size_gb             = "50"
  folder_id                = "${var.folder_id}"
  image_family             = "${var.image_family}"
  image_name               = "${var.image_family}-${local.timestamp}"
  instance_cores           = "4"
  max_retries              = "5"
  platform_id              = "${var.platform_id}"
  service_account_key_file = "${var.key_file}"
  source_image_family      = "${var.image}"
  ssh_username             = "${var.ssh_user}"
  use_internal_ip          = "false"
  use_ipv4_nat             = "true"
  zone                     = "${var.zone}"
}

build {
  sources = ["source.yandex.kubernetes"]

  provisioner "ansible" {
    ansible_env_vars = ["ANSIBLE_CONFIG=ansible/ansible.cfg", "ANSIBLE_PIPELINING=true"]
    extra_arguments  = ["-vv", "--ssh-extra-args", "-o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa"]
    playbook_file    = "ansible/playbooks/k8s_install.yml"
    user             = "${var.ssh_user}"
  }

  post-processors {
    post-processor "shell-local" {
      inline = [
        "rm -fr manifest.json"
      ]
    }

    post-processor "manifest" {
      output     = "manifest.json"
      strip_path = true
    }

    post-processor "shell-local" {
      inline = [
        "[[ \"`which jq > /dev/null; echo $?`\" -ne 0  ]] && jq \".builds[].artifact_id\" manifest.json",
        "[[ -f manifest.json ]] && mv -fv manifest.json terraform/stage/packer.auto.tfvars.json"
      ]
    }
  }
}
