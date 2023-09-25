> ~/Project/aasdhajkshd_microservices/gitlab-ci/infra
```output
$ packer build packer/
yandex.docker: output will be in this color.

==> yandex.docker: Creating temporary RSA SSH key for instance...
==> yandex.docker: Using as source image: fd830gae25ve4glajdsj (name: "ubuntu-22-04-lts-v20230918", family: "ubuntu-2204-lts")
==> yandex.docker: Creating network...
==> yandex.docker: Creating subnet in zone "ru-central1-a"...
==> yandex.docker: Creating disk...
==> yandex.docker: Creating instance...
==> yandex.docker: Waiting for instance with id fhmivdpqsrkvlsi1crlb to become active...
yandex.docker: Detected instance IP: 158.160.108.199
==> yandex.docker: Using SSH communicator to connect: 158.160.108.199
==> yandex.docker: Waiting for SSH to become available...
==> yandex.docker: Connected to SSH!
==> yandex.docker: Provisioning with Ansible...
yandex.docker: Setting up proxy adapter for Ansible....
==> yandex.docker: Executing Ansible: ansible-playbook -e packer_build_name="docker" -e packer_builder_type=yandex --ssh-extra-args '-o IdentitiesOnly=yes' -vv --ssh-extra-args -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa -e ansible_ssh_private_key_file=/tmp/ansible-key3895131770 -i /tmp/packer-provisioner-ansible2399953089 /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/playbooks/packer_docker.yml
yandex.docker: ansible-playbook [core 2.15.4]
yandex.docker:   config file = /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/ansible.cfg
yandex.docker:   configured module search path = ['/home/elnone/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
yandex.docker:   ansible python module location = /usr/lib/python3.11/site-packages/ansible
yandex.docker:   ansible collection location = /home/elnone/.ansible/collections:/usr/share/ansible/collections
yandex.docker:   executable location = /usr/bin/ansible-playbook
yandex.docker:   python version = 3.11.5 (main, Sep  2 2023, 14:16:33) [GCC 13.2.1 20230801] (/usr/bin/python)
yandex.docker:   jinja version = 3.1.2
yandex.docker:   libyaml = True
yandex.docker: Using /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/ansible.cfg as config file
yandex.docker: redirecting (type: callback) ansible.builtin.debug to ansible.posix.debug
yandex.docker: redirecting (type: callback) ansible.builtin.debug to ansible.posix.debug
yandex.docker: Skipping callback 'default', as we already have a stdout callback.
yandex.docker: Skipping callback 'minimal', as we already have a stdout callback.
yandex.docker: Skipping callback 'oneline', as we already have a stdout callback.
yandex.docker:
yandex.docker: PLAYBOOK: packer_docker.yml ****************************************************
yandex.docker: 1 plays in /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/playbooks/packer_docker.yml
yandex.docker:
yandex.docker: PLAY [Install docker base image] ***********************************************
yandex.docker:
yandex.docker: TASK [Gathering Facts] *********************************************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/playbooks/packer_docker.yml:2
yandex.docker: ok: [default]
yandex.docker:
yandex.docker: TASK [docker : Install dependencies] *******************************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:2
yandex.docker: The following NEW packages will be installed:
yandex.docker:   apt-transport-https
yandex.docker: 0 upgraded, 1 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: changed: [default] => (item=apt-transport-https) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301723,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": true,
yandex.docker:     "item": "apt-transport-https"
yandex.docker: }
yandex.docker:
yandex.docker: STDOUT:
yandex.docker:
yandex.docker: Reading package lists...
yandex.docker: Building dependency tree...
yandex.docker: Reading state information...
yandex.docker: The following NEW packages will be installed:
yandex.docker:   apt-transport-https
yandex.docker: 0 upgraded, 1 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: Need to get 1510 B of archives.
yandex.docker: After this operation, 169 kB of additional disk space will be used.
yandex.docker: Get:1 http://mirror.yandex.ru/ubuntu jammy-updates/universe amd64 apt-transport-https all 2.4.10 [1510 B]
yandex.docker: Fetched 1510 B in 0s (4467 B/s)
yandex.docker: Selecting previously unselected package apt-transport-https.
(Reading database ... 109675 files and directories currently installed.)
yandex.docker: Preparing to unpack .../apt-transport-https_2.4.10_all.deb ...
yandex.docker: Unpacking apt-transport-https (2.4.10) ...
yandex.docker: Setting up apt-transport-https (2.4.10) ...
yandex.docker: NEEDRESTART-VER: 3.5
yandex.docker: NEEDRESTART-KCUR: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KEXP: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KSTA: 1
yandex.docker:
yandex.docker: ok: [default] => (item=ca-certificates) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301741,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "ca-certificates"
yandex.docker: }
yandex.docker: ok: [default] => (item=curl) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301756,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "curl"
yandex.docker: }
yandex.docker: ok: [default] => (item=wget) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301758,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "wget"
yandex.docker: }
yandex.docker: ok: [default] => (item=gnupg) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301760,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "gnupg"
yandex.docker: }
yandex.docker: The following NEW packages will be installed:
yandex.docker:   net-tools
yandex.docker: 0 upgraded, 1 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: changed: [default] => (item=net-tools) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301762,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": true,
yandex.docker:     "item": "net-tools"
yandex.docker: }
yandex.docker:
yandex.docker: STDOUT:
yandex.docker:
yandex.docker: Reading package lists...
yandex.docker: Building dependency tree...
yandex.docker: Reading state information...
yandex.docker: The following NEW packages will be installed:
yandex.docker:   net-tools
yandex.docker: 0 upgraded, 1 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: Need to get 204 kB of archives.
yandex.docker: After this operation, 819 kB of additional disk space will be used.
yandex.docker: Get:1 http://mirror.yandex.ru/ubuntu jammy/main amd64 net-tools amd64 1.60+git20181103.0eebece-1ubuntu5 [204 kB]
yandex.docker: Fetched 204 kB in 0s (15.1 MB/s)
yandex.docker: Selecting previously unselected package net-tools.
(Reading database ... 109679 files and directories currently installed.)
yandex.docker: Preparing to unpack .../net-tools_1.60+git20181103.0eebece-1ubuntu5_amd64.deb ...
yandex.docker: Unpacking net-tools (1.60+git20181103.0eebece-1ubuntu5) ...
yandex.docker: Setting up net-tools (1.60+git20181103.0eebece-1ubuntu5) ...
yandex.docker: Processing triggers for man-db (2.10.2-1) ...
yandex.docker: NEEDRESTART-VER: 3.5
yandex.docker: NEEDRESTART-KCUR: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KEXP: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KSTA: 1
yandex.docker:
yandex.docker: Suggested packages:
yandex.docker:   ifupdown
yandex.docker: The following NEW packages will be installed:
yandex.docker:   bridge-utils
yandex.docker: 0 upgraded, 1 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: changed: [default] => (item=bridge-utils) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301768,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": true,
yandex.docker:     "item": "bridge-utils"
yandex.docker: }
yandex.docker:
yandex.docker: STDOUT:
yandex.docker:
yandex.docker: Reading package lists...
yandex.docker: Building dependency tree...
yandex.docker: Reading state information...
yandex.docker: Suggested packages:
yandex.docker:   ifupdown
yandex.docker: The following NEW packages will be installed:
yandex.docker:   bridge-utils
yandex.docker: 0 upgraded, 1 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: Need to get 34.4 kB of archives.
yandex.docker: After this operation, 121 kB of additional disk space will be used.
yandex.docker: Get:1 http://mirror.yandex.ru/ubuntu jammy/main amd64 bridge-utils amd64 1.7-1ubuntu3 [34.4 kB]
yandex.docker: Fetched 34.4 kB in 0s (694 kB/s)
yandex.docker: Selecting previously unselected package bridge-utils.
(Reading database ... 109728 files and directories currently installed.)
yandex.docker: Preparing to unpack .../bridge-utils_1.7-1ubuntu3_amd64.deb ...
yandex.docker: Unpacking bridge-utils (1.7-1ubuntu3) ...
yandex.docker: Setting up bridge-utils (1.7-1ubuntu3) ...
yandex.docker: Processing triggers for man-db (2.10.2-1) ...
yandex.docker: NEEDRESTART-VER: 3.5
yandex.docker: NEEDRESTART-KCUR: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KEXP: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KSTA: 1
yandex.docker:
yandex.docker:
yandex.docker: TASK [docker : Add GPG key] ****************************************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:17
yandex.docker: [WARNING]: Module remote_tmp /root/.ansible/tmp did not exist and was created
yandex.docker: with a mode of 0700, this may cause issues when running as another user. To
yandex.docker: avoid this, create the remote_tmp dir with the correct permissions manually
yandex.docker: changed: [default] => {
yandex.docker:     "after": [
yandex.docker:         "8D81803C0EBFCD88",
yandex.docker:         "7EA0A9C3F273FCD8",
yandex.docker:         "D94AA3F0EFE21092",
yandex.docker:         "871920D1991BC93C"
yandex.docker:     ],
yandex.docker:     "before": [
yandex.docker:         "D94AA3F0EFE21092",
yandex.docker:         "871920D1991BC93C"
yandex.docker:     ],
yandex.docker:     "changed": true,
yandex.docker:     "fp": "8D81803C0EBFCD88",
yandex.docker:     "id": "8D81803C0EBFCD88",
yandex.docker:     "key_id": "8D81803C0EBFCD88",
yandex.docker:     "short_id": "0EBFCD88"
yandex.docker: }
yandex.docker:
yandex.docker: TASK [docker : Add docker repository to apt] ***********************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:21
yandex.docker: --- before: /dev/null
yandex.docker: +++ after: /etc/apt/sources.list.d/download_docker_com_linux_ubuntu.list
yandex.docker: @@ -0,0 +1 @@
yandex.docker: +deb https://download.docker.com/linux/ubuntu jammy stable
yandex.docker:
yandex.docker: changed: [default] => {
yandex.docker:     "changed": true,
yandex.docker:     "repo": "deb https://download.docker.com/linux/ubuntu jammy stable",
yandex.docker:     "sources_added": [
yandex.docker:         "/etc/apt/sources.list.d/download_docker_com_linux_ubuntu.list"
yandex.docker:     ],
yandex.docker:     "sources_removed": [],
yandex.docker:     "state": "present"
yandex.docker: }
yandex.docker:
yandex.docker: TASK [docker : Install docker] *************************************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:25
yandex.docker: The following additional packages will be installed:
yandex.docker:   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
yandex.docker:   docker-compose-plugin libltdl7 libslirp0 pigz slirp4netns
yandex.docker: Suggested packages:
yandex.docker:   aufs-tools cgroupfs-mount | cgroup-lite
yandex.docker: The following NEW packages will be installed:
yandex.docker:   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
yandex.docker:   docker-ce-rootless-extras docker-compose-plugin libltdl7 libslirp0 pigz
yandex.docker:   slirp4netns
yandex.docker: 0 upgraded, 10 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: changed: [default] => (item=docker-ce) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301783,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": true,
yandex.docker:     "item": "docker-ce"
yandex.docker: }
yandex.docker:
yandex.docker: STDOUT:
yandex.docker:
yandex.docker: Reading package lists...
yandex.docker: Building dependency tree...
yandex.docker: Reading state information...
yandex.docker: The following additional packages will be installed:
yandex.docker:   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
yandex.docker:   docker-compose-plugin libltdl7 libslirp0 pigz slirp4netns
yandex.docker: Suggested packages:
yandex.docker:   aufs-tools cgroupfs-mount | cgroup-lite
yandex.docker: The following NEW packages will be installed:
yandex.docker:   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
yandex.docker:   docker-ce-rootless-extras docker-compose-plugin libltdl7 libslirp0 pigz
yandex.docker:   slirp4netns
yandex.docker: 0 upgraded, 10 newly installed, 0 to remove and 20 not upgraded.
yandex.docker: Need to get 114 MB of archives.
yandex.docker: After this operation, 409 MB of additional disk space will be used.
yandex.docker: Get:1 http://mirror.yandex.ru/ubuntu jammy/universe amd64 pigz amd64 2.6-1 [63.6 kB]
yandex.docker: Get:2 http://mirror.yandex.ru/ubuntu jammy/main amd64 libltdl7 amd64 2.4.6-15build2 [39.6 kB]
yandex.docker: Get:3 http://mirror.yandex.ru/ubuntu jammy/main amd64 libslirp0 amd64 4.6.1-1build1 [61.5 kB]
yandex.docker: Get:4 http://mirror.yandex.ru/ubuntu jammy/universe amd64 slirp4netns amd64 1.0.1-2 [28.2 kB]
yandex.docker: Get:5 https://download.docker.com/linux/ubuntu jammy/stable amd64 containerd.io amd64 1.6.24-1 [28.6 MB]
yandex.docker: Get:6 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-buildx-plugin amd64 0.11.2-1~ubuntu.22.04~jammy [28.2 MB]
yandex.docker: Get:7 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-cli amd64 5:24.0.6-1~ubuntu.22.04~jammy [13.3 MB]
yandex.docker: Get:8 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce amd64 5:24.0.6-1~ubuntu.22.04~jammy [22.6 MB]
yandex.docker: Get:9 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-rootless-extras amd64 5:24.0.6-1~ubuntu.22.04~jammy [9032 kB]
yandex.docker: Get:10 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-compose-plugin amd64 2.21.0-1~ubuntu.22.04~jammy [11.9 MB]
yandex.docker: Fetched 114 MB in 2s (52.5 MB/s)
yandex.docker: Selecting previously unselected package pigz.
(Reading database ... 109760 files and directories currently installed.)
yandex.docker: Preparing to unpack .../0-pigz_2.6-1_amd64.deb ...
yandex.docker: Unpacking pigz (2.6-1) ...
yandex.docker: Selecting previously unselected package containerd.io.
yandex.docker: Preparing to unpack .../1-containerd.io_1.6.24-1_amd64.deb ...
yandex.docker: Unpacking containerd.io (1.6.24-1) ...
yandex.docker: Selecting previously unselected package docker-buildx-plugin.
yandex.docker: Preparing to unpack .../2-docker-buildx-plugin_0.11.2-1~ubuntu.22.04~jammy_amd64.deb ...
yandex.docker: Unpacking docker-buildx-plugin (0.11.2-1~ubuntu.22.04~jammy) ...
yandex.docker: Selecting previously unselected package docker-ce-cli.
yandex.docker: Preparing to unpack .../3-docker-ce-cli_5%3a24.0.6-1~ubuntu.22.04~jammy_amd64.deb ...
yandex.docker: Unpacking docker-ce-cli (5:24.0.6-1~ubuntu.22.04~jammy) ...
yandex.docker: Selecting previously unselected package docker-ce.
yandex.docker: Preparing to unpack .../4-docker-ce_5%3a24.0.6-1~ubuntu.22.04~jammy_amd64.deb ...
yandex.docker: Unpacking docker-ce (5:24.0.6-1~ubuntu.22.04~jammy) ...
yandex.docker: Selecting previously unselected package docker-ce-rootless-extras.
yandex.docker: Preparing to unpack .../5-docker-ce-rootless-extras_5%3a24.0.6-1~ubuntu.22.04~jammy_amd64.deb ...
yandex.docker: Unpacking docker-ce-rootless-extras (5:24.0.6-1~ubuntu.22.04~jammy) ...
yandex.docker: Selecting previously unselected package docker-compose-plugin.
yandex.docker: Preparing to unpack .../6-docker-compose-plugin_2.21.0-1~ubuntu.22.04~jammy_amd64.deb ...
yandex.docker: Unpacking docker-compose-plugin (2.21.0-1~ubuntu.22.04~jammy) ...
yandex.docker: Selecting previously unselected package libltdl7:amd64.
yandex.docker: Preparing to unpack .../7-libltdl7_2.4.6-15build2_amd64.deb ...
yandex.docker: Unpacking libltdl7:amd64 (2.4.6-15build2) ...
yandex.docker: Selecting previously unselected package libslirp0:amd64.
yandex.docker: Preparing to unpack .../8-libslirp0_4.6.1-1build1_amd64.deb ...
yandex.docker: Unpacking libslirp0:amd64 (4.6.1-1build1) ...
yandex.docker: Selecting previously unselected package slirp4netns.
yandex.docker: Preparing to unpack .../9-slirp4netns_1.0.1-2_amd64.deb ...
yandex.docker: Unpacking slirp4netns (1.0.1-2) ...
yandex.docker: Setting up docker-buildx-plugin (0.11.2-1~ubuntu.22.04~jammy) ...
yandex.docker: Setting up containerd.io (1.6.24-1) ...
yandex.docker: Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
yandex.docker: Setting up docker-compose-plugin (2.21.0-1~ubuntu.22.04~jammy) ...
yandex.docker: Setting up libltdl7:amd64 (2.4.6-15build2) ...
yandex.docker: Setting up docker-ce-cli (5:24.0.6-1~ubuntu.22.04~jammy) ...
yandex.docker: Setting up libslirp0:amd64 (4.6.1-1build1) ...
yandex.docker: Setting up pigz (2.6-1) ...
yandex.docker: Setting up docker-ce-rootless-extras (5:24.0.6-1~ubuntu.22.04~jammy) ...
yandex.docker: Setting up slirp4netns (1.0.1-2) ...
yandex.docker: Setting up docker-ce (5:24.0.6-1~ubuntu.22.04~jammy) ...
yandex.docker: Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
yandex.docker: Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
yandex.docker: Processing triggers for man-db (2.10.2-1) ...
yandex.docker: Processing triggers for libc-bin (2.35-0ubuntu3.1) ...
yandex.docker: NEEDRESTART-VER: 3.5
yandex.docker: NEEDRESTART-KCUR: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KEXP: 5.15.0-83-generic
yandex.docker: NEEDRESTART-KSTA: 1
yandex.docker:
yandex.docker: ok: [default] => (item=docker-ce-cli) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301814,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "docker-ce-cli"
yandex.docker: }
yandex.docker: ok: [default] => (item=containerd.io) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301817,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "containerd.io"
yandex.docker: }
yandex.docker: ok: [default] => (item=docker-buildx-plugin) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301819,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "docker-buildx-plugin"
yandex.docker: }
yandex.docker: ok: [default] => (item=docker-compose-plugin) => {
yandex.docker:     "ansible_loop_var": "item",
yandex.docker:     "cache_update_time": 1695301821,
yandex.docker:     "cache_updated": true,
yandex.docker:     "changed": false,
yandex.docker:     "item": "docker-compose-plugin"
yandex.docker: }
yandex.docker:
yandex.docker: TASK [docker : Check docker is active] *****************************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:36
yandex.docker: ok: [default] => {
yandex.docker:     "changed": false,
yandex.docker:     "enabled": true,
yandex.docker:     "name": "docker",
yandex.docker:     "state": "started",
yandex.docker:     "status": {
yandex.docker:         "ActiveEnterTimestamp": "Thu 2023-09-21 13:10:10 UTC",
yandex.docker:         "ActiveEnterTimestampMonotonic": "130116995",
yandex.docker:         "ActiveExitTimestamp": "n/a",
yandex.docker:         "ActiveExitTimestampMonotonic": "0",
yandex.docker:         "ActiveState": "active",
yandex.docker:         "After": "system.slice firewalld.service time-set.target docker.socket sysinit.target network-online.target systemd-journald.socket basic.target containerd.service",
yandex.docker:         "AllowIsolate": "no",
yandex.docker:         "AssertResult": "yes",
yandex.docker:         "AssertTimestamp": "Thu 2023-09-21 13:10:09 UTC",
yandex.docker:         "AssertTimestampMonotonic": "129318951",
yandex.docker:         "Before": "shutdown.target multi-user.target",
yandex.docker:         "BlockIOAccounting": "no",
yandex.docker:         "BlockIOWeight": "[not set]",
yandex.docker:         "CPUAccounting": "yes",
yandex.docker:         "CPUAffinityFromNUMA": "no",
yandex.docker:         "CPUQuotaPerSecUSec": "infinity",
yandex.docker:         "CPUQuotaPeriodUSec": "infinity",
yandex.docker:         "CPUSchedulingPolicy": "0",
yandex.docker:         "CPUSchedulingPriority": "0",
yandex.docker:         "CPUSchedulingResetOnFork": "no",
yandex.docker:         "CPUShares": "[not set]",
yandex.docker:         "CPUUsageNSec": "324220000",
yandex.docker:         "CPUWeight": "[not set]",
yandex.docker:         "CacheDirectoryMode": "0755",
yandex.docker:         "CanFreeze": "yes",
yandex.docker:         "CanIsolate": "no",
yandex.docker:         "CanReload": "yes",
yandex.docker:         "CanStart": "yes",
yandex.docker:         "CanStop": "yes",
yandex.docker:         "CapabilityBoundingSet": "cap_chown cap_dac_override cap_dac_read_search cap_fowner cap_fsetid cap_kill cap_setgid cap_setuid cap_setpcapcap_linux_immutable cap_net_bind_service cap_net_broadcast cap_net_admin cap_net_raw cap_ipc_lock cap_ipc_owner cap_sys_module cap_sys_rawio cap_sys_chroot cap_sys_ptrace cap_sys_pacct cap_sys_admin cap_sys_boot cap_sys_nice cap_sys_resource cap_sys_time cap_sys_tty_config cap_mknod cap_lease cap_audit_write cap_audit_controlcap_setfcap cap_mac_override cap_mac_admin cap_syslog cap_wake_alarm cap_block_suspend cap_audit_read cap_perfmon cap_bpf cap_checkpoint_restore",
yandex.docker:         "CleanResult": "success",
yandex.docker:         "CollectMode": "inactive",
yandex.docker:         "ConditionResult": "yes",
yandex.docker:         "ConditionTimestamp": "Thu 2023-09-21 13:10:09 UTC",
yandex.docker:         "ConditionTimestampMonotonic": "129318949",
yandex.docker:         "ConfigurationDirectoryMode": "0755",
yandex.docker:         "Conflicts": "shutdown.target",
yandex.docker:         "ControlGroup": "/system.slice/docker.service",
yandex.docker:         "ControlPID": "0",
yandex.docker:         "CoredumpFilter": "0x33",
yandex.docker:         "DefaultDependencies": "yes",
yandex.docker:         "DefaultMemoryLow": "0",
yandex.docker:         "DefaultMemoryMin": "0",
yandex.docker:         "Delegate": "yes",
yandex.docker:         "DelegateControllers": "cpu cpuacct cpuset io blkio memory devices pids bpf-firewall bpf-devices bpf-foreign bpf-socket-bind",
yandex.docker:         "Description": "Docker Application Container Engine",
yandex.docker:         "DevicePolicy": "auto",
yandex.docker:         "Documentation": "https://docs.docker.com",
yandex.docker:         "DynamicUser": "no",
yandex.docker:         "EffectiveCPUs": "0-1",
yandex.docker:         "EffectiveMemoryNodes": "0",
yandex.docker:         "ExecMainCode": "0",
yandex.docker:         "ExecMainExitTimestamp": "n/a",
yandex.docker:         "ExecMainExitTimestampMonotonic": "0",
yandex.docker:         "ExecMainPID": "5640",
yandex.docker:         "ExecMainStartTimestamp": "Thu 2023-09-21 13:10:09 UTC",
yandex.docker:         "ExecMainStartTimestampMonotonic": "129320153",
yandex.docker:         "ExecMainStatus": "0",
yandex.docker:         "ExecReload": "{ path=/bin/kill ; argv[]=/bin/kill -s HUP $MAINPID ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.docker:         "ExecReloadEx": "{ path=/bin/kill ; argv[]=/bin/kill -s HUP $MAINPID ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.docker:         "ExecStart": "{ path=/usr/bin/dockerd ; argv[]=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock ; ignore_errors=no ; start_time=[Thu 2023-09-21 13:10:09 UTC] ; stop_time=[n/a] ; pid=5640 ; code=(null) ; status=0/0 }",
yandex.docker:         "ExecStartEx": "{ path=/usr/bin/dockerd ; argv[]=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock ; flags= ; start_time=[Thu 2023-09-21 13:10:09 UTC] ; stop_time=[n/a] ; pid=5640 ; code=(null) ; status=0/0 }",
yandex.docker:         "FailureAction": "none",
yandex.docker:         "FileDescriptorStoreMax": "0",
yandex.docker:         "FinalKillSignal": "9",
yandex.docker:         "FragmentPath": "/lib/systemd/system/docker.service",
yandex.docker:         "FreezerState": "running",
yandex.docker:         "GID": "[not set]",
yandex.docker:         "GuessMainPID": "yes",
yandex.docker:         "IOAccounting": "no",
yandex.docker:         "IOReadBytes": "18446744073709551615",
yandex.docker:         "IOReadOperations": "18446744073709551615",
yandex.docker:         "IOSchedulingClass": "2",
yandex.docker:         "IOSchedulingPriority": "4",
yandex.docker:         "IOWeight": "[not set]",
yandex.docker:         "IOWriteBytes": "18446744073709551615",
yandex.docker:         "IOWriteOperations": "18446744073709551615",
yandex.docker:         "IPAccounting": "no",
yandex.docker:         "IPEgressBytes": "[no data]",
yandex.docker:         "IPEgressPackets": "[no data]",
yandex.docker:         "IPIngressBytes": "[no data]",
yandex.docker:         "IPIngressPackets": "[no data]",
yandex.docker:         "Id": "docker.service",
yandex.docker:         "IgnoreOnIsolate": "no",
yandex.docker:         "IgnoreSIGPIPE": "yes",
yandex.docker:         "InactiveEnterTimestamp": "n/a",
yandex.docker:         "InactiveEnterTimestampMonotonic": "0",
yandex.docker:         "InactiveExitTimestamp": "Thu 2023-09-21 13:10:09 UTC",
yandex.docker:         "InactiveExitTimestampMonotonic": "129320813",
yandex.docker:         "InvocationID": "21d062d65621477cb833bb2a8314dbf9",
yandex.docker:         "JobRunningTimeoutUSec": "infinity",
yandex.docker:         "JobTimeoutAction": "none",
yandex.docker:         "JobTimeoutUSec": "infinity",
yandex.docker:         "KeyringMode": "private",
yandex.docker:         "KillMode": "process",
yandex.docker:         "KillSignal": "15",
yandex.docker:         "LimitAS": "infinity",
yandex.docker:         "LimitASSoft": "infinity",
yandex.docker:         "LimitCORE": "infinity",
yandex.docker:         "LimitCORESoft": "infinity",
yandex.docker:         "LimitCPU": "infinity",
yandex.docker:         "LimitCPUSoft": "infinity",
yandex.docker:         "LimitDATA": "infinity",
yandex.docker:         "LimitDATASoft": "infinity",
yandex.docker:         "LimitFSIZE": "infinity",
yandex.docker:         "LimitFSIZESoft": "infinity",
yandex.docker:         "LimitLOCKS": "infinity",
yandex.docker:         "LimitLOCKSSoft": "infinity",
yandex.docker:         "LimitMEMLOCK": "65536",
yandex.docker:         "LimitMEMLOCKSoft": "65536",
yandex.docker:         "LimitMSGQUEUE": "819200",
yandex.docker:         "LimitMSGQUEUESoft": "819200",
yandex.docker:         "LimitNICE": "0",
yandex.docker:         "LimitNICESoft": "0",
yandex.docker:         "LimitNOFILE": "infinity",
yandex.docker:         "LimitNOFILESoft": "infinity",
yandex.docker:         "LimitNPROC": "infinity",
yandex.docker:         "LimitNPROCSoft": "infinity",
yandex.docker:         "LimitRSS": "infinity",
yandex.docker:         "LimitRSSSoft": "infinity",
yandex.docker:         "LimitRTPRIO": "0",
yandex.docker:         "LimitRTPRIOSoft": "0",
yandex.docker:         "LimitRTTIME": "infinity",
yandex.docker:         "LimitRTTIMESoft": "infinity",
yandex.docker:         "LimitSIGPENDING": "15195",
yandex.docker:         "LimitSIGPENDINGSoft": "15195",
yandex.docker:         "LimitSTACK": "infinity",
yandex.docker:         "LimitSTACKSoft": "8388608",
yandex.docker:         "LoadState": "loaded",
yandex.docker:         "LockPersonality": "no",
yandex.docker:         "LogLevelMax": "-1",
yandex.docker:         "LogRateLimitBurst": "0",
yandex.docker:         "LogRateLimitIntervalUSec": "0",
yandex.docker:         "LogsDirectoryMode": "0755",
yandex.docker:         "MainPID": "5640",
yandex.docker:         "ManagedOOMMemoryPressure": "auto",
yandex.docker:         "ManagedOOMMemoryPressureLimit": "0",
yandex.docker:         "ManagedOOMPreference": "none",
yandex.docker:         "ManagedOOMSwap": "auto",
yandex.docker:         "MemoryAccounting": "yes",
yandex.docker:         "MemoryAvailable": "infinity",
yandex.docker:         "MemoryCurrent": "28614656",
yandex.docker:         "MemoryDenyWriteExecute": "no",
yandex.docker:         "MemoryHigh": "infinity",
yandex.docker:         "MemoryLimit": "infinity",
yandex.docker:         "MemoryLow": "0",
yandex.docker:         "MemoryMax": "infinity",
yandex.docker:         "MemoryMin": "0",
yandex.docker:         "MemorySwapMax": "infinity",
yandex.docker:         "MountAPIVFS": "no",
yandex.docker:         "NFileDescriptorStore": "0",
yandex.docker:         "NRestarts": "0",
yandex.docker:         "NUMAPolicy": "n/a",
yandex.docker:         "Names": "docker.service",
yandex.docker:         "NeedDaemonReload": "no",
yandex.docker:         "Nice": "0",
yandex.docker:         "NoNewPrivileges": "no",
yandex.docker:         "NonBlocking": "no",
yandex.docker:         "NotifyAccess": "main",
yandex.docker:         "OOMPolicy": "continue",
yandex.docker:         "OOMScoreAdjust": "-500",
yandex.docker:         "OnFailureJobMode": "replace",
yandex.docker:         "OnSuccessJobMode": "fail",
yandex.docker:         "Perpetual": "no",
yandex.docker:         "PrivateDevices": "no",
yandex.docker:         "PrivateIPC": "no",
yandex.docker:         "PrivateMounts": "no",
yandex.docker:         "PrivateNetwork": "no",
yandex.docker:         "PrivateTmp": "no",
yandex.docker:         "PrivateUsers": "no",
yandex.docker:         "ProcSubset": "all",
yandex.docker:         "ProtectClock": "no",
yandex.docker:         "ProtectControlGroups": "no",
yandex.docker:         "ProtectHome": "no",
yandex.docker:         "ProtectHostname": "no",
yandex.docker:         "ProtectKernelLogs": "no",
yandex.docker:         "ProtectKernelModules": "no",
yandex.docker:         "ProtectKernelTunables": "no",
yandex.docker:         "ProtectProc": "default",
yandex.docker:         "ProtectSystem": "no",
yandex.docker:         "RefuseManualStart": "no",
yandex.docker:         "RefuseManualStop": "no",
yandex.docker:         "ReloadResult": "success",
yandex.docker:         "RemainAfterExit": "no",
yandex.docker:         "RemoveIPC": "no",
yandex.docker:         "Requires": "system.slice docker.socket sysinit.target",
yandex.docker:         "Restart": "always",
yandex.docker:         "RestartKillSignal": "15",
yandex.docker:         "RestartUSec": "2s",
yandex.docker:         "RestrictNamespaces": "no",
yandex.docker:         "RestrictRealtime": "no",
yandex.docker:         "RestrictSUIDSGID": "no",
yandex.docker:         "Result": "success",
yandex.docker:         "RootDirectoryStartOnly": "no",
yandex.docker:         "RuntimeDirectoryMode": "0755",
yandex.docker:         "RuntimeDirectoryPreserve": "no",
yandex.docker:         "RuntimeMaxUSec": "infinity",
yandex.docker:         "SameProcessGroup": "no",
yandex.docker:         "SecureBits": "0",
yandex.docker:         "SendSIGHUP": "no",
yandex.docker:         "SendSIGKILL": "yes",
yandex.docker:         "Slice": "system.slice",
yandex.docker:         "StandardError": "inherit",
yandex.docker:         "StandardInput": "null",
yandex.docker:         "StandardOutput": "journal",
yandex.docker:         "StartLimitAction": "none",
yandex.docker:         "StartLimitBurst": "3",
yandex.docker:         "StartLimitIntervalUSec": "1min",
yandex.docker:         "StartupBlockIOWeight": "[not set]",
yandex.docker:         "StartupCPUShares": "[not set]",
yandex.docker:         "StartupCPUWeight": "[not set]",
yandex.docker:         "StartupIOWeight": "[not set]",
yandex.docker:         "StateChangeTimestamp": "Thu 2023-09-21 13:10:10 UTC",
yandex.docker:         "StateChangeTimestampMonotonic": "130116995",
yandex.docker:         "StateDirectoryMode": "0755",
yandex.docker:         "StatusErrno": "0",
yandex.docker:         "StopWhenUnneeded": "no",
yandex.docker:         "SubState": "running",
yandex.docker:         "SuccessAction": "none",
yandex.docker:         "SyslogFacility": "3",
yandex.docker:         "SyslogLevel": "6",
yandex.docker:         "SyslogLevelPrefix": "yes",
yandex.docker:         "SyslogPriority": "30",
yandex.docker:         "SystemCallErrorNumber": "2147483646",
yandex.docker:         "TTYReset": "no",
yandex.docker:         "TTYVHangup": "no",
yandex.docker:         "TTYVTDisallocate": "no",
yandex.docker:         "TasksAccounting": "yes",
yandex.docker:         "TasksCurrent": "9",
yandex.docker:         "TasksMax": "infinity",
yandex.docker:         "TimeoutAbortUSec": "1min 30s",
yandex.docker:         "TimeoutCleanUSec": "infinity",
yandex.docker:         "TimeoutStartFailureMode": "terminate",
yandex.docker:         "TimeoutStartUSec": "infinity",
yandex.docker:         "TimeoutStopFailureMode": "terminate",
yandex.docker:         "TimeoutStopUSec": "1min 30s",
yandex.docker:         "TimerSlackNSec": "50000",
yandex.docker:         "Transient": "no",
yandex.docker:         "TriggeredBy": "docker.socket",
yandex.docker:         "Type": "notify",
yandex.docker:         "UID": "[not set]",
yandex.docker:         "UMask": "0022",
yandex.docker:         "UnitFilePreset": "enabled",
yandex.docker:         "UnitFileState": "enabled",
yandex.docker:         "UtmpMode": "init",
yandex.docker:         "WantedBy": "multi-user.target",
yandex.docker:         "Wants": "network-online.target containerd.service",
yandex.docker:         "WatchdogSignal": "6",
yandex.docker:         "WatchdogTimestamp": "n/a",
yandex.docker:         "WatchdogTimestampMonotonic": "0",
yandex.docker:         "WatchdogUSec": "0"
yandex.docker:     }
yandex.docker: }
yandex.docker:
yandex.docker: TASK [docker : Ensure group "docker" exists] ***********************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:41
yandex.docker: ok: [default] => {
yandex.docker:     "changed": false,
yandex.docker:     "gid": 999,
yandex.docker:     "name": "docker",
yandex.docker:     "state": "present",
yandex.docker:     "system": false
yandex.docker: }
yandex.docker:
yandex.docker: TASK [docker : Adding ubuntu to docker group] **********************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:45
yandex.docker: changed: [default] => {
yandex.docker:     "append": true,
yandex.docker:     "changed": true,
yandex.docker:     "comment": "Ubuntu",
yandex.docker:     "group": 1001,
yandex.docker:     "groups": "docker",
yandex.docker:     "home": "/home/ubuntu",
yandex.docker:     "move_home": false,
yandex.docker:     "name": "ubuntu",
yandex.docker:     "shell": "/bin/bash",
yandex.docker:     "state": "present",
yandex.docker:     "uid": 1000
yandex.docker: }
yandex.docker:
yandex.docker: TASK [docker : Install docker-compose] *****************************************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:50
yandex.docker: Notification for handler Docker Compose Standalone version has been saved.
yandex.docker: changed: [default] => {
yandex.docker:     "changed": true,
yandex.docker:     "checksum_dest": null,
yandex.docker:     "checksum_src": "cae8721954ba460e699338c4de99a09f1a24f52e",
yandex.docker:     "dest": "/usr/local/bin/docker-compose",
yandex.docker:     "elapsed": 2,
yandex.docker:     "gid": 0,
yandex.docker:     "group": "root",
yandex.docker:     "md5sum": "9a5adbbae1d0dfe98fbf9eaf2c5091c3",
yandex.docker:     "mode": "0754",
yandex.docker:     "owner": "root",
yandex.docker:     "size": 59383631,
yandex.docker:     "src": "/root/.ansible/tmp/ansible-moduletmp-1695301824.8943987-5_cuukek/tmptoocnnlz",
yandex.docker:     "state": "file",
yandex.docker:     "status_code": 200,
yandex.docker:     "uid": 0,
yandex.docker:     "url": "https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-linux-x86_64"
yandex.docker: }
yandex.docker:
yandex.docker: MSG:
yandex.docker:
yandex.docker: OK (59383631 bytes)
yandex.docker:
yandex.docker: TASK [docker : Change file ownership, group and permissions] *******************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/tasks/main.yml:56
yandex.docker: --- before
yandex.docker: +++ after
yandex.docker: @@ -1,6 +1,6 @@
yandex.docker:  {
yandex.docker: -    "group": 0,
yandex.docker: -    "mode": "0754",
yandex.docker: -    "owner": 0,
yandex.docker: +    "group": 999,
yandex.docker: +    "mode": "0755",
yandex.docker: +    "owner": 1000,
yandex.docker:      "path": "/usr/local/bin/docker-compose"
yandex.docker:  }
yandex.docker:
yandex.docker: changed: [default] => {
yandex.docker:     "changed": true,
yandex.docker:     "gid": 999,
yandex.docker:     "group": "docker",
yandex.docker:     "mode": "0755",
yandex.docker:     "owner": "ubuntu",
yandex.docker:     "path": "/usr/local/bin/docker-compose",
yandex.docker:     "size": 59383631,
yandex.docker:     "state": "file",
yandex.docker:     "uid": 1000
yandex.docker: }
yandex.docker: NOTIFIED HANDLER docker : Docker Compose Standalone version for default
yandex.docker:
yandex.docker: RUNNING HANDLER [docker : Docker Compose Standalone version] *******************
yandex.docker: task path: /home/elnone/Project/aasdhajkshd_microservices/gitlab-ci/infra/ansible/roles/docker/handlers/main.yml:2
yandex.docker: changed: [default] => {
yandex.docker:     "changed": true,
yandex.docker:     "cmd": [
yandex.docker:         "/usr/local/bin/docker-compose",
yandex.docker:         "version"
yandex.docker:     ],
yandex.docker:     "delta": "0:00:00.051580",
yandex.docker:     "end": "2023-09-21 13:10:28.102891",
yandex.docker:     "rc": 0,
yandex.docker:     "start": "2023-09-21 13:10:28.051311"
yandex.docker: }
yandex.docker:
yandex.docker: STDOUT:
yandex.docker:
yandex.docker: Docker Compose version v2.20.3
yandex.docker:
yandex.docker: PLAY RECAP *********************************************************************
yandex.docker: default                    : ok=11   changed=8    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
yandex.docker:
==> yandex.docker: Stopping instance...
==> yandex.docker: Deleting instance...
yandex.docker: Instance has been deleted!
==> yandex.docker: Creating image: docker-base-20230921130654
==> yandex.docker: Waiting for image to complete...
==> yandex.docker: Success image create...
==> yandex.docker: Destroying subnet...
yandex.docker: Subnet has been deleted!
==> yandex.docker: Destroying network...
yandex.docker: Network has been deleted!
==> yandex.docker: Destroying boot disk...
yandex.docker: Disk has been deleted!
==> yandex.docker: Running post-processor:  (type shell-local)
==> yandex.docker (shell-local): Running local shell script: /tmp/packer-shell3101763729
==> yandex.docker: Running post-processor:  (type manifest)
==> yandex.docker: Running post-processor:  (type shell-local)
==> yandex.docker (shell-local): Running local shell script: /tmp/packer-shell43225568
yandex.docker (shell-local): переименован 'manifest.json' -> 'terraform/stage/packer.auto.tfvars.json'
Build 'yandex.docker' finished after 5 minutes 37 seconds.

==> Wait completed after 5 minutes 37 seconds

==> Builds finished. The artifacts of successful builds are:
--> yandex.docker: A disk image was created: docker-base-20230921130654 (id: fd8gok96f4141gjb6e7s) with family name docker-base
--> yandex.docker: A disk image was created: docker-base-20230921130654 (id: fd8gok96f4141gjb6e7s) with family name docker-base
--> yandex.docker: A disk image was created: docker-base-20230921130654 (id: fd8gok96f4141gjb6e7s) with family name docker-base
--> yandex.docker: A disk image was created: docker-base-20230921130654 (id: fd8gok96f4141gjb6e7s) with family name docker-base
```
> ~/Project/aasdhajkshd_microservices/gitlab-ci/infra
```output
$ yc compute image list
+----------------------+----------------------------+-------------+----------------------+--------+
|          ID          |            NAME            |   FAMILY    |     PRODUCT IDS      | STATUS |
+----------------------+----------------------------+-------------+----------------------+--------+
| fd8d5nvtet5am6m1j4b8 | reddit-app-1693574338      | reddit-base | f2entqq6l8h6pr5irof0 | READY  |
| fd8gok96f4141gjb6e7s | docker-base-20230921130654 | docker-base | f2e4utd8k9recmepp2gh | READY  |
| fd8qmo24g949toh8esi6 | docker-base-1694069565     | docker-base | f2eme42l2s3rugm2neig | READY  |
| fd8rg3eq9tnh20gd2f3a | reddit-db-1693574925       | reddit-base | f2entqq6l8h6pr5irof0 | READY  |
+----------------------+----------------------------+-------------+----------------------+--------+
```
