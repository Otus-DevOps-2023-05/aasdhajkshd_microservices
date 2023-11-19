```bash
terraform -chdir=terraform/stage apply
```

Вывод:

```output
module.docker.data.yandex_compute_image.img: Reading...
module.docker.data.yandex_compute_image.img: Read complete after 0s [id=fd853sqaosrb2anl1uve]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # local_file.ansible_inventory will be created
  + resource "local_file" "ansible_inventory" {
      + content              = (known after apply)
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "../../ansible/environments/stage/inventory.json"
      + id                   = (known after apply)
    }

  # null_resource.run_ansible will be created
  + resource "null_resource" "run_ansible" {
      + id       = (known after apply)
      + triggers = {
          + "inventory_file" = "../../ansible/environments/stage/inventory.json"
        }
    }

  # module.docker.yandex_compute_instance.host[0] will be created
  + resource "yandex_compute_instance" "host" {
      + allow_stopping_for_update = true
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + labels                    = {
          + "tags" = "host"
        }
      + metadata                  = {
          + "user-data" = <<-EOT
                #cloud-config
                package_update: false
                package_upgrade: false
                users:
                  - name: ubuntu
                    groups: sudo
                    shell: /bin/bash
                    sudo: ['ALL=(ALL) NOPASSWD:ALL']
                    ssh_authorized_keys:
                      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxAzVxg3K3JJ0Tpsw+Qs+N2/IKNR2mfhcUT8Whdpzeby7/BOxS6HmydwD01YxFBJQgXi07Mj7RkplyOIz+wc7sZtPGQ9Ju9/2b9zVbM+T5WAO2hPlv38IeJMKRRG3RttYXeS3OfjfegkvwYorpCP3VgDaDp6xu2GQ3G3mESkh/DNjnH6oaYexSQ+GL9AU7k14vNwjK57su5ARn/dUbJln7F4RdFjL2++tZRGp6RGKEIf4KdZamA5SUsRkqwr6hJWQcpaRKLucBK8RSQGCEODVPZIDZ9/VHU1rJwGeKHuNKeLQjChfj1H4WkIOAS7q+x8rNCa4ZAZL+sL6kTuftNFMp appuser@yc
                  - name: reddit
                    passwd: $6$VMB6iWdM$V/Pw803Xly5/.rrEje5ngDTN9vbBfVpNoWUomES0UFDQ9r1uc6119iuayG85D13rkJbj042xbsJXgsvMaI5ps/
                    shell: /bin/bash
            EOT
        }
      + name                      = "docker-host-0"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd853sqaosrb2anl1uve"
              + name        = (known after apply)
              + size        = 40
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = "e9bi9oji8ljojstbt6cp"
        }

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 4
        }

      + timeouts {
          + create = "30m"
          + delete = "2h"
        }
    }

  # module.docker.yandex_compute_instance.logging[0] will be created
  + resource "yandex_compute_instance" "logging" {
      + allow_stopping_for_update = true
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + labels                    = {
          + "tags" = "logging"
        }
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                var.ssh_user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxAzVxg3K3JJ0Tpsw+Qs+N2/IKNR2mfhcUT8Whdpzeby7/BOxS6HmydwD01YxFBJQgXi07Mj7RkplyOIz+wc7sZtPGQ9Ju9/2b9zVbM+T5WAO2hPlv38IeJMKRRG3RttYXeS3OfjfegkvwYorpCP3VgDaDp6xu2GQ3G3mESkh/DNjnH6oaYexSQ+GL9AU7k14vNwjK57su5ARn/dUbJln7F4RdFjL2++tZRGp6RGKEIf4KdZamA5SUsRkqwr6hJWQcpaRKLucBK8RSQGCEODVPZIDZ9/VHU1rJwGeKHuNKeLQjChfj1H4WkIOAS7q+x8rNCa4ZAZL+sL6kTuftNFMp appuser@yc
            EOT
        }
      + name                      = "docker-logging-0"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd853sqaosrb2anl1uve"
              + name        = (known after apply)
              + size        = 40
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = "e9bi9oji8ljojstbt6cp"
        }

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 4
        }

      + timeouts {
          + create = "60m"
          + delete = "2h"
        }
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + docker_host_instance      = [
      + [
          + (known after apply),
        ],
      + [
          + "docker-host-0",
        ],
    ]
  + docker_host_ip_address    = (known after apply)
  + docker_image_id           = "fd853sqaosrb2anl1uve"
  + docker_logging_instance   = [
      + [
          + (known after apply),
        ],
      + [
          + "docker-logging-0",
        ],
    ]
  + docker_logging_ip_address = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.docker.yandex_compute_instance.logging[0]: Creating...
module.docker.yandex_compute_instance.host[0]: Creating...
module.docker.yandex_compute_instance.host[0]: Still creating... [10s elapsed]
module.docker.yandex_compute_instance.logging[0]: Still creating... [10s elapsed]
module.docker.yandex_compute_instance.host[0]: Still creating... [20s elapsed]
module.docker.yandex_compute_instance.logging[0]: Still creating... [20s elapsed]
module.docker.yandex_compute_instance.host[0]: Creation complete after 28s [id=fhma1onfpi80lu9p769r]
module.docker.yandex_compute_instance.logging[0]: Still creating... [30s elapsed]
module.docker.yandex_compute_instance.logging[0]: Creation complete after 36s [id=fhmm27372bjc4i5elva1]
local_file.ansible_inventory: Creating...
local_file.ansible_inventory: Creation complete after 0s [id=0da5fa3bfceed865975e270eca03b786871be76f]
null_resource.run_ansible: Creating...
null_resource.run_ansible: Provisioning with 'local-exec'...
null_resource.run_ansible (local-exec): Executing: ["/bin/sh" "-c" "ansible-playbook -T 300 -i ../../ansible/environments/stage/inventory.json ../../ansible/playbooks/docker_logging.yml"]

null_resource.run_ansible (local-exec): PLAY [Install docker] **********************************************************

null_resource.run_ansible (local-exec): TASK [docker : Wait for system to become reachable] ****************************
null_resource.run_ansible: Still creating... [10s elapsed]
null_resource.run_ansible: Still creating... [20s elapsed]
null_resource.run_ansible (local-exec): ok: [docker-host-0]
null_resource.run_ansible (local-exec): ok: [docker-logging-0]

null_resource.run_ansible (local-exec): TASK [docker : Gather facts for the first time] ********************************
null_resource.run_ansible (local-exec): ok: [docker-logging-0]
null_resource.run_ansible (local-exec): ok: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [docker : fail] ***********************************************************
null_resource.run_ansible (local-exec): skipping: [docker-host-0]
null_resource.run_ansible (local-exec): skipping: [docker-logging-0]

null_resource.run_ansible (local-exec): TASK [docker : Install dependencies] *******************************************
null_resource.run_ansible: Still creating... [30s elapsed]
null_resource.run_ansible: Still creating... [40s elapsed]
null_resource.run_ansible: Still creating... [50s elapsed]
null_resource.run_ansible: Still creating... [1m0s elapsed]
null_resource.run_ansible (local-exec): The following packages will be upgraded:
null_resource.run_ansible (local-exec):   apt-transport-https
null_resource.run_ansible (local-exec): 1 upgraded, 0 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-host-0] => (item=apt-transport-https)
null_resource.run_ansible (local-exec): ok: [docker-host-0] => (item=ca-certificates)
null_resource.run_ansible (local-exec): The following packages will be upgraded:
null_resource.run_ansible (local-exec):   apt-transport-https
null_resource.run_ansible (local-exec): 1 upgraded, 0 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-logging-0] => (item=apt-transport-https)
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => (item=ca-certificates)
null_resource.run_ansible (local-exec): ok: [docker-host-0] => (item=curl)
null_resource.run_ansible (local-exec): ok: [docker-host-0] => (item=wget)
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => (item=curl)
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => (item=wget)
null_resource.run_ansible (local-exec): ok: [docker-host-0] => (item=gnupg)
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => (item=gnupg)
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   net-tools
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-host-0] => (item=net-tools)
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   net-tools
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-logging-0] => (item=net-tools)
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   ifupdown
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   bridge-utils
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-host-0] => (item=bridge-utils)
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   ifupdown
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   bridge-utils
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-logging-0] => (item=bridge-utils)
null_resource.run_ansible (local-exec): ok: [docker-host-0] => (item=vim)
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => (item=vim)

null_resource.run_ansible (local-exec): TASK [docker : Add GPG key] ****************************************************
null_resource.run_ansible (local-exec): changed: [docker-logging-0]
null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [docker : Add docker repository to apt] ***********************************
null_resource.run_ansible: Still creating... [1m10s elapsed]
null_resource.run_ansible (local-exec): --- before: /dev/null
null_resource.run_ansible (local-exec): +++ after: /etc/apt/sources.list.d/docker.list
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +deb https://download.docker.com/linux/ubuntu focal stable

null_resource.run_ansible (local-exec): changed: [docker-host-0]
null_resource.run_ansible (local-exec): --- before: /dev/null
null_resource.run_ansible (local-exec): +++ after: /etc/apt/sources.list.d/docker.list
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +deb https://download.docker.com/linux/ubuntu focal stable

null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): TASK [docker : Install docker] *************************************************
null_resource.run_ansible: Still creating... [1m20s elapsed]
null_resource.run_ansible: Still creating... [1m30s elapsed]
null_resource.run_ansible: Still creating... [1m40s elapsed]
null_resource.run_ansible: Still creating... [1m50s elapsed]
null_resource.run_ansible: Still creating... [2m0s elapsed]
null_resource.run_ansible: Still creating... [2m10s elapsed]
null_resource.run_ansible: Still creating... [2m20s elapsed]
null_resource.run_ansible: Still creating... [2m30s elapsed]
null_resource.run_ansible (local-exec): The following additional packages will be installed:
null_resource.run_ansible (local-exec):   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
null_resource.run_ansible (local-exec):   docker-compose-plugin git git-man libcurl3-gnutls liberror-perl
null_resource.run_ansible (local-exec):   libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz slirp4netns
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   aufs-tools cgroupfs-mount | cgroup-lite git-daemon-run | git-daemon-sysvinit
null_resource.run_ansible (local-exec):   git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn
null_resource.run_ansible (local-exec):   diffutils-doc perl-doc libterm-readline-gnu-perl
null_resource.run_ansible (local-exec):   | libterm-readline-perl-perl make libb-debug-perl liblocale-codes-perl
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
null_resource.run_ansible (local-exec):   docker-ce-rootless-extras docker-compose-plugin git git-man libcurl3-gnutls
null_resource.run_ansible (local-exec):   liberror-perl libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz
null_resource.run_ansible (local-exec):   slirp4netns
null_resource.run_ansible (local-exec): 0 upgraded, 17 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-host-0] => (item=docker-ce)
null_resource.run_ansible (local-exec): ok: [docker-host-0] => (item=docker-ce-cli)
null_resource.run_ansible (local-exec): ok: [docker-host-0] => (item=containerd.io)
null_resource.run_ansible (local-exec): The following additional packages will be installed:
null_resource.run_ansible (local-exec):   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
null_resource.run_ansible (local-exec):   docker-compose-plugin git git-man libcurl3-gnutls liberror-perl
null_resource.run_ansible (local-exec):   libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz slirp4netns
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   aufs-tools cgroupfs-mount | cgroup-lite git-daemon-run | git-daemon-sysvinit
null_resource.run_ansible (local-exec):   git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn
null_resource.run_ansible (local-exec):   diffutils-doc perl-doc libterm-readline-gnu-perl
null_resource.run_ansible (local-exec):   | libterm-readline-perl-perl make libb-debug-perl liblocale-codes-perl
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
null_resource.run_ansible (local-exec):   docker-ce-rootless-extras docker-compose-plugin git git-man libcurl3-gnutls
null_resource.run_ansible (local-exec):   liberror-perl libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz
null_resource.run_ansible (local-exec):   slirp4netns
null_resource.run_ansible (local-exec): 0 upgraded, 17 newly installed, 0 to remove and 7 not upgraded.
null_resource.run_ansible (local-exec): changed: [docker-logging-0] => (item=docker-ce)
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => (item=docker-ce-cli)
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => (item=containerd.io)

null_resource.run_ansible (local-exec): TASK [docker : Creating a file with content] ***********************************
null_resource.run_ansible: Still creating... [2m40s elapsed]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-205958753amh2k_/tmpewjc7wgt
null_resource.run_ansible (local-exec): @@ -0,0 +1,3 @@
null_resource.run_ansible (local-exec): +{
null_resource.run_ansible (local-exec): +  "exec-opts": ["native.cgroupdriver=systemd"]
null_resource.run_ansible (local-exec): +}

null_resource.run_ansible (local-exec): changed: [docker-logging-0]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-205958753amh2k_/tmp_duw5v3i
null_resource.run_ansible (local-exec): @@ -0,0 +1,3 @@
null_resource.run_ansible (local-exec): +{
null_resource.run_ansible (local-exec): +  "exec-opts": ["native.cgroupdriver=systemd"]
null_resource.run_ansible (local-exec): +}

null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [docker : Check docker is active] *****************************************
null_resource.run_ansible (local-exec): ok: [docker-logging-0]
null_resource.run_ansible (local-exec): ok: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [docker : Ensure group "docker" exists] ***********************************
null_resource.run_ansible (local-exec): ok: [docker-logging-0]
null_resource.run_ansible (local-exec): ok: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [docker : Adding ubuntu to docker group] **********************************
null_resource.run_ansible (local-exec): changed: [docker-logging-0]
null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [docker : Install docker-compose] *****************************************
null_resource.run_ansible (local-exec): changed: [docker-host-0]
null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): TASK [docker : Change file ownership, group and permissions] *******************
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,6 +1,6 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "group": 0,
null_resource.run_ansible (local-exec): -    "mode": "0754",
null_resource.run_ansible (local-exec): -    "owner": 0,
null_resource.run_ansible (local-exec): +    "group": 998,
null_resource.run_ansible (local-exec): +    "mode": "0755",
null_resource.run_ansible (local-exec): +    "owner": 1000,
null_resource.run_ansible (local-exec):      "path": "/usr/local/bin/docker-compose"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-host-0]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,6 +1,6 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "group": 0,
null_resource.run_ansible (local-exec): -    "mode": "0754",
null_resource.run_ansible (local-exec): -    "owner": 0,
null_resource.run_ansible (local-exec): +    "group": 998,
null_resource.run_ansible (local-exec): +    "mode": "0755",
null_resource.run_ansible (local-exec): +    "owner": 1000,
null_resource.run_ansible (local-exec):      "path": "/usr/local/bin/docker-compose"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): RUNNING HANDLER [docker : Docker Compose Standalone version] *******************
null_resource.run_ansible (local-exec): changed: [docker-logging-0]
null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): RUNNING HANDLER [docker : Reload docker service] *******************************
null_resource.run_ansible (local-exec): changed: [docker-host-0]
null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): PLAY [Install logging services] ************************************************

null_resource.run_ansible (local-exec): TASK [Create a directory if it does not exist] *********************************
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,5 +1,5 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "mode": "0775",
null_resource.run_ansible (local-exec): +    "mode": "0755",
null_resource.run_ansible (local-exec):      "path": "/home/ubuntu/docker",
null_resource.run_ansible (local-exec): -    "state": "absent"
null_resource.run_ansible (local-exec): +    "state": "directory"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): TASK [Create en .env file] *****************************************************
null_resource.run_ansible: Still creating... [2m50s elapsed]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-205958753amh2k_/tmp2rru7dsd
null_resource.run_ansible (local-exec): @@ -0,0 +1,4 @@
null_resource.run_ansible (local-exec): +USERNAME=23f03013e37f
null_resource.run_ansible (local-exec): +FLUENTD_VERSION=logging
null_resource.run_ansible (local-exec): +PROMETHEUS_VERSION=2.1.0
null_resource.run_ansible (local-exec): +COMPOSE_PROJECT_NAME=logging

null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): TASK [Create en docker-compose.yml file] ***************************************
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-205958753amh2k_/tmpghs8904_
null_resource.run_ansible (local-exec): @@ -0,0 +1,21 @@
null_resource.run_ansible (local-exec): +version: '3'
null_resource.run_ansible (local-exec): +services:
null_resource.run_ansible (local-exec): +  fluentd:
null_resource.run_ansible (local-exec): +    image: ${USERNAME}/fluent-bit:${FLUENTD_VERSION}
null_resource.run_ansible (local-exec): +    ports:
null_resource.run_ansible (local-exec): +      - "24224:24224"
null_resource.run_ansible (local-exec): +      - "24224:24224/udp"
null_resource.run_ansible (local-exec): +    depends_on:
null_resource.run_ansible (local-exec): +      - elasticsearch
null_resource.run_ansible (local-exec): +  elasticsearch:
null_resource.run_ansible (local-exec): +    image: elasticsearch:7.17.3
null_resource.run_ansible (local-exec): +    environment:
null_resource.run_ansible (local-exec): +      - discovery.type=single-node
null_resource.run_ansible (local-exec): +    expose:
null_resource.run_ansible (local-exec): +      - "9200"
null_resource.run_ansible (local-exec): +    ports:
null_resource.run_ansible (local-exec): +      - "9200:9200"
null_resource.run_ansible (local-exec): +  kibana:
null_resource.run_ansible (local-exec): +    image: kibana:7.17.3
null_resource.run_ansible (local-exec): +    ports:
null_resource.run_ansible (local-exec): +      - "5601:5601"

null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): TASK [Show results] ************************************************************
null_resource.run_ansible (local-exec): ok: [docker-logging-0] => {
null_resource.run_ansible (local-exec):     "output": {
null_resource.run_ansible (local-exec):         "changed": true,
null_resource.run_ansible (local-exec):         "checksum": "2d469f53f462972a39262520aa6f03a49de8cef5",
null_resource.run_ansible (local-exec):         "dest": "/home/ubuntu/docker/docker-compose.yml",
null_resource.run_ansible (local-exec):         "diff": [
null_resource.run_ansible (local-exec):             {
null_resource.run_ansible (local-exec):                 "after": "version: '3'\nservices:\n  fluentd:\n    image: ${USERNAME}/fluent-bit:${FLUENTD_VERSION}\n    ports:\n      - \"24224:24224\"\n      - \"24224:24224/udp\"\n    depends_on:\n      - elasticsearch\n  elasticsearch:\n    image: elasticsearch:7.17.3\n    environment:\n      - discovery.type=single-node\n    expose:\n      - \"9200\"\n    ports:\n      - \"9200:9200\"\n  kibana:\n    image: kibana:7.17.3\n    ports:\n      - \"5601:5601\"\n",
null_resource.run_ansible (local-exec):                 "after_header": "/home/elnone/.ansible/tmp/ansible-local-205958753amh2k_/tmpghs8904_",
null_resource.run_ansible (local-exec):                 "before": ""
null_resource.run_ansible (local-exec):             }
null_resource.run_ansible (local-exec):         ],
null_resource.run_ansible (local-exec):         "failed": false,
null_resource.run_ansible (local-exec):         "gid": 1001,
null_resource.run_ansible (local-exec):         "group": "ubuntu",
null_resource.run_ansible (local-exec):         "md5sum": "d906d4a64456bb65665785a3f83c73f7",
null_resource.run_ansible (local-exec):         "mode": "0664",
null_resource.run_ansible (local-exec):         "owner": "ubuntu",
null_resource.run_ansible (local-exec):         "size": 409,
null_resource.run_ansible (local-exec):         "src": "/home/ubuntu/.ansible/tmp/ansible-tmp-1700291983.7708645-2060822-30486516476931/source",
null_resource.run_ansible (local-exec):         "state": "file",
null_resource.run_ansible (local-exec):         "uid": 1000
null_resource.run_ansible (local-exec):     }
null_resource.run_ansible (local-exec): }

null_resource.run_ansible (local-exec): TASK [Reset ssh connection] ****************************************************

null_resource.run_ansible (local-exec): TASK [Run container] ***********************************************************
null_resource.run_ansible: Still creating... [3m0s elapsed]
null_resource.run_ansible: Still creating... [3m10s elapsed]
null_resource.run_ansible: Still creating... [3m20s elapsed]
null_resource.run_ansible: Still creating... [3m30s elapsed]
null_resource.run_ansible (local-exec): changed: [docker-logging-0]

null_resource.run_ansible (local-exec): PLAY [Install applications services] *******************************************

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [docker-host-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): ['The logging host IP is 158.160.106.143']

null_resource.run_ansible (local-exec): TASK [Create a directory if it does not exist] *********************************
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,5 +1,5 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "mode": "0775",
null_resource.run_ansible (local-exec): +    "mode": "0755",
null_resource.run_ansible (local-exec):      "path": "/home/ubuntu/docker",
null_resource.run_ansible (local-exec): -    "state": "absent"
null_resource.run_ansible (local-exec): +    "state": "directory"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [Create en .env file] *****************************************************
null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [Setting environment] *****************************************************
null_resource.run_ansible (local-exec): --- before: /home/ubuntu/docker/.env (content)
null_resource.run_ansible (local-exec): +++ after: /home/ubuntu/docker/.env (content)
null_resource.run_ansible (local-exec): @@ -0,0 +1,10 @@
null_resource.run_ansible (local-exec): +# BEGIN ANSIBLE MANAGED BLOCK
null_resource.run_ansible (local-exec): +USERNAME=23f03013e37f
null_resource.run_ansible (local-exec): +PORT=9292
null_resource.run_ansible (local-exec): +UI_VERSION=latest
null_resource.run_ansible (local-exec): +POST_VERSION=logging
null_resource.run_ansible (local-exec): +COMMENT_VERSION=logging
null_resource.run_ansible (local-exec): +DB_VERSION=4.4.24
null_resource.run_ansible (local-exec): +PROMETHEUS_VERSION=2.1.0
null_resource.run_ansible (local-exec): +COMPOSE_PROJECT_NAME=logging
null_resource.run_ansible (local-exec): +# END ANSIBLE MANAGED BLOCK

null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [Create en docker-compose.yml file] ***************************************
null_resource.run_ansible: Still creating... [3m40s elapsed]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-205958753amh2k_/tmp9us6t9j9
null_resource.run_ansible (local-exec): @@ -0,0 +1,54 @@
null_resource.run_ansible (local-exec): +version: '3.3'
null_resource.run_ansible (local-exec): +name: logging
null_resource.run_ansible (local-exec): +services:
null_resource.run_ansible (local-exec): +  post_db:
null_resource.run_ansible (local-exec): +    image: mongo:${DB_VERSION}
null_resource.run_ansible (local-exec): +    volumes:
null_resource.run_ansible (local-exec): +      - post_db:/data/db
null_resource.run_ansible (local-exec): +    networks:
null_resource.run_ansible (local-exec): +      - back_net
null_resource.run_ansible (local-exec): +  ui:
null_resource.run_ansible (local-exec): +    image: ${USERNAME}/ui:${UI_VERSION}
null_resource.run_ansible (local-exec): +    ports:
null_resource.run_ansible (local-exec): +      - ${PORT}:9292/tcp
null_resource.run_ansible (local-exec): +    networks:
null_resource.run_ansible (local-exec): +      - front_net
null_resource.run_ansible (local-exec): +    depends_on:
null_resource.run_ansible (local-exec): +      - post_db
null_resource.run_ansible (local-exec): +      - post
null_resource.run_ansible (local-exec): +      - comment
null_resource.run_ansible (local-exec): +    command: puma --debug -w 2
null_resource.run_ansible (local-exec): +    logging:
null_resource.run_ansible (local-exec): +      driver: "fluentd"
null_resource.run_ansible (local-exec): +      options:
null_resource.run_ansible (local-exec): +        fluentd-address: "158.160.106.143:24224"
null_resource.run_ansible (local-exec): +        tag: service.ui
null_resource.run_ansible (local-exec): +  post:
null_resource.run_ansible (local-exec): +    image: ${USERNAME}/post:${POST_VERSION}
null_resource.run_ansible (local-exec): +    environment:
null_resource.run_ansible (local-exec): +      - COMPOSE_PROJECT_NAME
null_resource.run_ansible (local-exec): +    networks:
null_resource.run_ansible (local-exec): +      - back_net
null_resource.run_ansible (local-exec): +      - front_net
null_resource.run_ansible (local-exec): +    logging:
null_resource.run_ansible (local-exec): +      driver: "fluentd"
null_resource.run_ansible (local-exec): +      options:
null_resource.run_ansible (local-exec): +        fluentd-address: "158.160.106.143:24224"
null_resource.run_ansible (local-exec): +        tag: service.post
null_resource.run_ansible (local-exec): +  comment:
null_resource.run_ansible (local-exec): +    image: ${USERNAME}/comment:${COMMENT_VERSION}
null_resource.run_ansible (local-exec): +    networks:
null_resource.run_ansible (local-exec): +      - back_net
null_resource.run_ansible (local-exec): +      - front_net
null_resource.run_ansible (local-exec): +volumes:
null_resource.run_ansible (local-exec): +  post_db:
null_resource.run_ansible (local-exec): +  prometheus_data:
null_resource.run_ansible (local-exec): +networks:
null_resource.run_ansible (local-exec): +  front_net:
null_resource.run_ansible (local-exec): +    ipam:
null_resource.run_ansible (local-exec): +      config:
null_resource.run_ansible (local-exec): +        - subnet: 10.0.1.0/24
null_resource.run_ansible (local-exec): +  back_net:
null_resource.run_ansible (local-exec): +    ipam:
null_resource.run_ansible (local-exec): +      config:
null_resource.run_ansible (local-exec): +        - subnet: 10.0.2.0/24

null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): TASK [Show results] ************************************************************
null_resource.run_ansible (local-exec): ok: [docker-host-0] => {
null_resource.run_ansible (local-exec):     "output": {
null_resource.run_ansible (local-exec):         "changed": true,
null_resource.run_ansible (local-exec):         "checksum": "b783a03ffee46223215a37823e16cd0896fecd5f",
null_resource.run_ansible (local-exec):         "dest": "/home/ubuntu/docker/docker-compose.yml",
null_resource.run_ansible (local-exec):         "diff": [
null_resource.run_ansible (local-exec):             {
null_resource.run_ansible (local-exec):                 "after": "version: '3.3'\nname: logging\nservices:\n  post_db:\n    image: mongo:${DB_VERSION}\n    volumes:\n      - post_db:/data/db\n    networks:\n      - back_net\n  ui:\n    image: ${USERNAME}/ui:${UI_VERSION}\n    ports:\n      - ${PORT}:9292/tcp\n    networks:\n      - front_net\n    depends_on:\n      - post_db\n      - post\n      - comment\n    command: puma --debug -w 2\n    logging:\n      driver: \"fluentd\"\n      options:\n        fluentd-address: \"158.160.106.143:24224\"\n        tag: service.ui\n  post:\n    image: ${USERNAME}/post:${POST_VERSION}\n    environment:\n      - COMPOSE_PROJECT_NAME\n    networks:\n      - back_net\n      - front_net\n    logging:\n      driver: \"fluentd\"\n      options:\n        fluentd-address: \"158.160.106.143:24224\"\n        tag: service.post\n  comment:\n    image: ${USERNAME}/comment:${COMMENT_VERSION}\n    networks:\n      - back_net\n      - front_net\nvolumes:\n  post_db:\n  prometheus_data:\nnetworks:\n  front_net:\n    ipam:\n      config:\n        - subnet: 10.0.1.0/24\n  back_net:\n    ipam:\n      config:\n        - subnet: 10.0.2.0/24\n",
null_resource.run_ansible (local-exec):                 "after_header": "/home/elnone/.ansible/tmp/ansible-local-205958753amh2k_/tmp9us6t9j9",
null_resource.run_ansible (local-exec):                 "before": ""
null_resource.run_ansible (local-exec):             }
null_resource.run_ansible (local-exec):         ],
null_resource.run_ansible (local-exec):         "failed": false,
null_resource.run_ansible (local-exec):         "gid": 1001,
null_resource.run_ansible (local-exec):         "group": "ubuntu",
null_resource.run_ansible (local-exec):         "md5sum": "0542289299cdae798c7fd5d74c86c08c",
null_resource.run_ansible (local-exec):         "mode": "0664",
null_resource.run_ansible (local-exec):         "owner": "ubuntu",
null_resource.run_ansible (local-exec):         "size": 1047,
null_resource.run_ansible (local-exec):         "src": "/home/ubuntu/.ansible/tmp/ansible-tmp-1700292032.0931814-2061115-221809412842504/source",
null_resource.run_ansible (local-exec):         "state": "file",
null_resource.run_ansible (local-exec):         "uid": 1000
null_resource.run_ansible (local-exec):     }
null_resource.run_ansible (local-exec): }

null_resource.run_ansible (local-exec): TASK [Reset ssh connection] ****************************************************

null_resource.run_ansible (local-exec): TASK [Run container] ***********************************************************
null_resource.run_ansible: Still creating... [3m50s elapsed]
null_resource.run_ansible: Still creating... [4m0s elapsed]
null_resource.run_ansible: Still creating... [4m10s elapsed]
null_resource.run_ansible: Still creating... [4m20s elapsed]
null_resource.run_ansible (local-exec): changed: [docker-host-0]

null_resource.run_ansible (local-exec): PLAY RECAP *********************************************************************
null_resource.run_ansible (local-exec): docker-host-0              : ok=21   changed=15   unreachable=0    failed=0    skipped=1    rescued=0    ignored=0
null_resource.run_ansible (local-exec): docker-logging-0           : ok=19   changed=14   unreachable=0    failed=0    skipped=1    rescued=0    ignored=0

null_resource.run_ansible: Creation complete after 4m28s [id=9150461854691077379]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

docker_host_instance = [
  [
    "fhma1onfpi80lu9p769r",
  ],
  [
    "docker-host-0",
  ],
]
docker_host_ip_address = "158.160.125.139"
docker_image_id = "fd853sqaosrb2anl1uve"
docker_logging_instance = [
  [
    "fhmm27372bjc4i5elva1",
  ],
  [
    "docker-logging-0",
  ],
]
docker_logging_ip_address = "158.160.106.143"
```
