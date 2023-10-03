> ~/Project/aasdhajkshd_microservices/gitlab-ci/infra
```output
$ terraform -chdir=terraform/stage/ apply -auto-approve
╷
│ Warning: Provider development overrides are in effect
│
│ The following provider development overrides are set in the CLI configuration:
│  - yandex-cloud/yandex in /home/elnone/.terraform/plugins/yandex-cloud/yandex/0.97.0
│
│ The behavior may therefore not match any released version of the provider and applying changes may cause the state to become incompatible with published
│ releases.
╵

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
+ filename             = "inventory.json"
+ id                   = (known after apply)
}

# null_resource.check_ansible_files will be created
+ resource "null_resource" "check_ansible_files" {
+ id       = (known after apply)
+ triggers = {
+ "always_run" = (known after apply)
}
}

# null_resource.image_id will be created
+ resource "null_resource" "image_id" {
+ id       = (known after apply)
+ triggers = {
+ "image_value" = "fd8gok96f4141gjb6e7s"
}
}

# null_resource.run_ansible will be created
+ resource "null_resource" "run_ansible" {
+ id       = (known after apply)
+ triggers = {
+ "inventory_file" = "inventory.json"
}
}

# module.docker.yandex_compute_instance.docker[0] will be created
+ resource "yandex_compute_instance" "docker" {
+ allow_stopping_for_update = true
+ created_at                = (known after apply)
+ folder_id                 = (known after apply)
+ fqdn                      = (known after apply)
+ gpu_cluster_id            = (known after apply)
+ hostname                  = (known after apply)
+ id                        = (known after apply)
+ labels                    = {
+ "tags" = "docker"
}
+ metadata                  = {
+ "ssh-keys" = <<-EOT
var.ssh_user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxAzVxg3K3JJ0Tpsw+Qs+N2/IKNR2mfhcUT8Whdpzeby7/BOxS6HmydwD01YxFBJQgXi07Mj7RkplyOIz+wc7sZtPGQ9Ju9/2b9zVbM+T5WAO2hPlv38IeJMKRRG3RttYXeS3OfjfegkvwYorpCP3VgDaDp6xu2GQ3G3mESkh/DNjnH6oaYexSQ+GL9AU7k14vNwjK57su5ARn/dUbJln7F4RdFjL2++tZRGp6RGKEIf4KdZamA5SUsRkqwr6hJWQcpaRKLucBK8RSQGCEODVPZIDZ9/VHU1rJwGeKHuNKeLQjChfj1H4WkIOAS7q+x8rNCa4ZAZL+sL6kTuftNFMp appuser@yc
EOT
}
+ name                      = "docker-0"
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
+ image_id    = "fd8gok96f4141gjb6e7s"
+ name        = (known after apply)
+ size        = (known after apply)
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
+ core_fraction = 100
+ cores         = 2
+ memory        = 8
}
}

Plan: 5 to add, 0 to change, 0 to destroy.

Changes to Outputs:
+ docker_instance_id = [
+ (known after apply),
]
+ docker_ip_address  = [
+ (known after apply),
]
+ docker_name        = [
+ "docker-0",
]
null_resource.image_id: Creating...
null_resource.image_id: Creation complete after 0s [id=7689864708736068952]
null_resource.check_ansible_files: Creating...
null_resource.check_ansible_files: Provisioning with 'local-exec'...
null_resource.check_ansible_files (local-exec): Executing: ["/bin/sh" "-c" "./scripts/check_ansible_files.sh"]
null_resource.check_ansible_files (local-exec): ansible.cfg files exist
null_resource.check_ansible_files: Creation complete after 0s [id=8938710197853387870]
module.docker.yandex_compute_instance.docker[0]: Creating...
module.docker.yandex_compute_instance.docker[0]: Still creating... [10s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [20s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [30s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [40s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [50s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [1m0s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [1m10s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [1m20s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [1m30s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [1m40s elapsed]
module.docker.yandex_compute_instance.docker[0]: Still creating... [1m50s elapsed]
module.docker.yandex_compute_instance.docker[0]: Creation complete after 1m55s [id=fhmgs6nuu418oovlbn1o]
local_file.ansible_inventory: Creating...
local_file.ansible_inventory: Creation complete after 0s [id=c3a76e48f83d8e0d33f6c1a0ef29a0906b480805]
null_resource.run_ansible: Creating...
null_resource.run_ansible: Provisioning with 'local-exec'...
null_resource.run_ansible (local-exec): Executing: ["/bin/sh" "-c" "sleep 3m && ansible-playbook -i inventory.json ../../ansible/playbooks/gitlab.yml"]
null_resource.run_ansible: Still creating... [10s elapsed]
null_resource.run_ansible: Still creating... [20s elapsed]
null_resource.run_ansible: Still creating... [30s elapsed]
null_resource.run_ansible: Still creating... [40s elapsed]
null_resource.run_ansible: Still creating... [50s elapsed]
null_resource.run_ansible: Still creating... [1m0s elapsed]
null_resource.run_ansible: Still creating... [1m10s elapsed]
null_resource.run_ansible: Still creating... [1m20s elapsed]
null_resource.run_ansible: Still creating... [1m30s elapsed]
null_resource.run_ansible: Still creating... [1m40s elapsed]
null_resource.run_ansible: Still creating... [1m50s elapsed]
null_resource.run_ansible: Still creating... [2m0s elapsed]
null_resource.run_ansible: Still creating... [2m10s elapsed]
null_resource.run_ansible: Still creating... [2m20s elapsed]
null_resource.run_ansible: Still creating... [2m30s elapsed]
null_resource.run_ansible: Still creating... [2m40s elapsed]
null_resource.run_ansible: Still creating... [2m50s elapsed]
null_resource.run_ansible: Still creating... [3m0s elapsed]

null_resource.run_ansible (local-exec): PLAY [Install docker base image] ***********************************************

null_resource.run_ansible (local-exec): TASK [gitlab : Wait for the connection] ****************************************
null_resource.run_ansible: Still creating... [3m10s elapsed]
null_resource.run_ansible: Still creating... [3m20s elapsed]
null_resource.run_ansible: Still creating... [3m30s elapsed]
null_resource.run_ansible (local-exec): ok: [docker-0]

null_resource.run_ansible (local-exec): TASK [gitlab : This is Gitlab] *************************************************
null_resource.run_ansible (local-exec): skipping: [docker-0]

null_resource.run_ansible (local-exec): TASK [gitlab : Gathering facts] ************************************************
null_resource.run_ansible (local-exec): ok: [docker-0]

null_resource.run_ansible (local-exec): TASK [gitlab : Print inventory_hostname] ***************************************
null_resource.run_ansible (local-exec): ok: [docker-0] => {
null_resource.run_ansible (local-exec):     "inventory_hostname": "docker-0"
null_resource.run_ansible (local-exec): }

null_resource.run_ansible (local-exec): TASK [gitlab : Print ansible_hostname] *****************************************
null_resource.run_ansible (local-exec): ok: [docker-0] => {
null_resource.run_ansible (local-exec):     "ansible_hostname": "fhmgs6nuu418oovlbn1o"
null_resource.run_ansible (local-exec): }

null_resource.run_ansible (local-exec): TASK [gitlab : Print ansible_fqdn] *********************************************
null_resource.run_ansible (local-exec): ok: [docker-0] => {
null_resource.run_ansible (local-exec):     "ansible_fqdn": "fhmgs6nuu418oovlbn1o.auto.internal"
null_resource.run_ansible (local-exec): }

null_resource.run_ansible (local-exec): TASK [gitlab : Creates directory] **********************************************
null_resource.run_ansible: Still creating... [3m40s elapsed]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,6 +1,6 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "group": 0,
null_resource.run_ansible (local-exec): -    "owner": 0,
null_resource.run_ansible (local-exec): +    "group": 999,
null_resource.run_ansible (local-exec): +    "owner": 1000,
null_resource.run_ansible (local-exec):      "path": "/srv/gitlab/config",
null_resource.run_ansible (local-exec): -    "state": "absent"
null_resource.run_ansible (local-exec): +    "state": "directory"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-0] => (item=/srv/gitlab/config)
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,6 +1,6 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "group": 0,
null_resource.run_ansible (local-exec): -    "owner": 0,
null_resource.run_ansible (local-exec): +    "group": 999,
null_resource.run_ansible (local-exec): +    "owner": 1000,
null_resource.run_ansible (local-exec):      "path": "/srv/gitlab/data",
null_resource.run_ansible (local-exec): -    "state": "absent"
null_resource.run_ansible (local-exec): +    "state": "directory"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-0] => (item=/srv/gitlab/data)
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,6 +1,6 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "group": 0,
null_resource.run_ansible (local-exec): -    "owner": 0,
null_resource.run_ansible (local-exec): +    "group": 999,
null_resource.run_ansible (local-exec): +    "owner": 1000,
null_resource.run_ansible (local-exec):      "path": "/srv/gitlab/logs",
null_resource.run_ansible (local-exec): -    "state": "absent"
null_resource.run_ansible (local-exec): +    "state": "directory"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-0] => (item=/srv/gitlab/logs)

null_resource.run_ansible (local-exec): TASK [gitlab : Creating a docker-compose.yml] **********************************
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-93191xtnt66cc/tmpet2qg_j5/docker-compose.yml.j2
null_resource.run_ansible (local-exec): @@ -0,0 +1,18 @@
null_resource.run_ansible (local-exec): +version: '3.6'
null_resource.run_ansible (local-exec): +services:
null_resource.run_ansible (local-exec): +  web:
null_resource.run_ansible (local-exec): +    image: 'gitlab/gitlab-ce:latest'
null_resource.run_ansible (local-exec): +    restart: always
null_resource.run_ansible (local-exec): +    hostname: 'gitlab.example.com'
null_resource.run_ansible (local-exec): +    environment:
null_resource.run_ansible (local-exec): +      GITLAB_OMNIBUS_CONFIG: |
null_resource.run_ansible (local-exec): +        external_url 'http://84.252.130.110'
null_resource.run_ansible (local-exec): +    ports:
null_resource.run_ansible (local-exec): +      - '80:80'
null_resource.run_ansible (local-exec): +      - '443:443'
null_resource.run_ansible (local-exec): +      - '2222:22'
null_resource.run_ansible (local-exec): +    volumes:
null_resource.run_ansible (local-exec): +      - '/srv/gitlab/config:/etc/gitlab'
null_resource.run_ansible (local-exec): +      - '/srv/gitlab/logs:/var/log/gitlab'
null_resource.run_ansible (local-exec): +      - '/srv/gitlab/data:/var/opt/gitlab'
null_resource.run_ansible (local-exec): +    shm_size: '256m'

null_resource.run_ansible (local-exec): changed: [docker-0]

null_resource.run_ansible (local-exec): TASK [gitlab : Create a data container] ****************************************
null_resource.run_ansible: Still creating... [3m50s elapsed]
null_resource.run_ansible: Still creating... [4m0s elapsed]
null_resource.run_ansible: Still creating... [4m10s elapsed]
null_resource.run_ansible: Still creating... [4m20s elapsed]
null_resource.run_ansible: Still creating... [4m30s elapsed]
null_resource.run_ansible: Still creating... [4m40s elapsed]
null_resource.run_ansible: Still creating... [4m50s elapsed]
null_resource.run_ansible: Still creating... [5m0s elapsed]
null_resource.run_ansible: Still creating... [5m10s elapsed]
null_resource.run_ansible: Still creating... [5m20s elapsed]
null_resource.run_ansible: Still creating... [5m30s elapsed]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,4 +1,4 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "exists": false,
null_resource.run_ansible (local-exec): -    "running": false
null_resource.run_ansible (local-exec): +    "exists": true,
null_resource.run_ansible (local-exec): +    "running": true
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [docker-0]

null_resource.run_ansible (local-exec): TASK [gitlab : Get container info] *********************************************
null_resource.run_ansible (local-exec): ok: [docker-0]

null_resource.run_ansible (local-exec): TASK [gitlab : Print information about container] ******************************
null_resource.run_ansible (local-exec): ok: [docker-0] => {
null_resource.run_ansible (local-exec):     "gitlab_status.container.State.Health.Status }}\"": "starting\"}}"
null_resource.run_ansible (local-exec): }

null_resource.run_ansible (local-exec): TASK [gitlab : Wait for port 80] ***********************************************
null_resource.run_ansible (local-exec): ok: [docker-0]

null_resource.run_ansible (local-exec): RUNNING HANDLER [gitlab : Start docker-compose gitlab] *************************
null_resource.run_ansible (local-exec): changed: [docker-0]

null_resource.run_ansible (local-exec): PLAY RECAP *********************************************************************
null_resource.run_ansible (local-exec): docker-0                   : ok=12   changed=4    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0

null_resource.run_ansible: Creation complete after 5m36s [id=6473703735803519540]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

Outputs:

docker_instance_id = [
"fhmgs6nuu418oovlbn1o",
]
docker_ip_address = [
"84.252.130.110",
]
docker_name = [
"docker-0",
]
```
