#### Создание золотого образа *packer*'ом

```bash
$ packer build packer/
yandex.kubernetes: output will be in this color.

==> yandex.kubernetes: Creating temporary RSA SSH key for instance...
==> yandex.kubernetes: Using as source image: fd8ecgtorub9r4609man (name: "ubuntu-20-04-lts-v20231002", family: "ubuntu-2004-lts")
==> yandex.kubernetes: Creating network...
==> yandex.kubernetes: Creating subnet in zone "ru-central1-a"...
==> yandex.kubernetes: Creating disk...
==> yandex.kubernetes: Creating instance...
==> yandex.kubernetes: Waiting for instance with id fhm59lvs24j8b10830m2 to become active...
yandex.kubernetes: Detected instance IP: 158.160.107.164
==> yandex.kubernetes: Using SSH communicator to connect: 158.160.107.164
==> yandex.kubernetes: Waiting for SSH to become available...
==> yandex.kubernetes: Connected to SSH!
==> yandex.kubernetes: Provisioning with Ansible...
yandex.kubernetes: Setting up proxy adapter for Ansible....
==> yandex.kubernetes: Executing Ansible: ansible-playbook -e packer_build_name="kubernetes" -e packer_builder_type=yandex --ssh-extra-args '-o IdentitiesOnly=yes' -vv --ssh-extra-args -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa -e ansible_ssh_private_key_file=/tmp/ansible-key101696467 -i /tmp/packer-provisioner-ansible1135272994 /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/playbooks/k8s_install.yml
yandex.kubernetes: [WARNING]: Could not match supplied host pattern, ignoring: masters
yandex.kubernetes: [WARNING]: Could not match supplied host pattern, ignoring: workers
yandex.kubernetes: ansible-playbook [core 2.15.4]
yandex.kubernetes:   config file = /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/ansible.cfg
yandex.kubernetes:   configured module search path = ['/home/elnone/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
yandex.kubernetes:   ansible python module location = /usr/lib/python3.11/site-packages/ansible
yandex.kubernetes:   ansible collection location = /home/elnone/.ansible/collections:/usr/share/ansible/collections
yandex.kubernetes:   executable location = /usr/bin/ansible-playbook
yandex.kubernetes:   python version = 3.11.5 (main, Sep  2 2023, 14:16:33) [GCC 13.2.1 20230801] (/usr/bin/python)
yandex.kubernetes:   jinja version = 3.1.2
yandex.kubernetes:   libyaml = True
yandex.kubernetes: Using /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/ansible.cfg as config file
yandex.kubernetes: redirecting (type: modules) ansible.builtin.modprobe to community.general.modprobe
yandex.kubernetes: redirecting (type: modules) ansible.builtin.sysctl to ansible.posix.sysctl
yandex.kubernetes: redirecting (type: callback) ansible.builtin.debug to ansible.posix.debug
yandex.kubernetes: redirecting (type: callback) ansible.builtin.debug to ansible.posix.debug
yandex.kubernetes: Skipping callback 'default', as we already have a stdout callback.
yandex.kubernetes: Skipping callback 'minimal', as we already have a stdout callback.
yandex.kubernetes: Skipping callback 'oneline', as we already have a stdout callback.
yandex.kubernetes:
yandex.kubernetes: PLAYBOOK: k8s_install.yml ******************************************************
yandex.kubernetes: 1 plays in /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/playbooks/k8s_install.yml
yandex.kubernetes:
yandex.kubernetes: PLAY [Install k8s based image] *************************************************
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Wait for system to become reachable] ****************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:2
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "elapsed": 0
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Gather facts for the first time] ********************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:5
yandex.kubernetes: ok: [default]
yandex.kubernetes:
yandex.kubernetes: TASK [docker : fail] ***********************************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:8
yandex.kubernetes: skipping: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "false_condition": "ansible_distribution != 'Ubuntu' or ansible_distribution_version != '20.04'",
yandex.kubernetes:     "skip_reason": "Conditional result was False"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Install dependencies] *******************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:12
yandex.kubernetes: ok: [default] => (item=apt-transport-https) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": true,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "apt-transport-https"
yandex.kubernetes: }
yandex.kubernetes: ok: [default] => (item=ca-certificates) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "ca-certificates"
yandex.kubernetes: }
yandex.kubernetes: ok: [default] => (item=curl) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "curl"
yandex.kubernetes: }
yandex.kubernetes: ok: [default] => (item=wget) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "wget"
yandex.kubernetes: }
yandex.kubernetes: ok: [default] => (item=gnupg) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "gnupg"
yandex.kubernetes: }
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   net-tools
yandex.kubernetes: 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: changed: [default] => (item=net-tools) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "net-tools"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes: Reading package lists...
yandex.kubernetes: Building dependency tree...
yandex.kubernetes: Reading state information...
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   net-tools
yandex.kubernetes: 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: Need to get 196 kB of archives.
yandex.kubernetes: After this operation, 864 kB of additional disk space will be used.
yandex.kubernetes: Get:1 http://mirror.yandex.ru/ubuntu focal/main amd64 net-tools amd64 1.60+git20180626.aebd88e-1ubuntu1 [196 kB]
yandex.kubernetes: Fetched 196 kB in 0s (1352 kB/s)
yandex.kubernetes: Selecting previously unselected package net-tools.
(Reading database ... 102623 files and directories currently installed.)
yandex.kubernetes: Preparing to unpack .../net-tools_1.60+git20180626.aebd88e-1ubuntu1_amd64.deb ...
yandex.kubernetes: Unpacking net-tools (1.60+git20180626.aebd88e-1ubuntu1) ...
yandex.kubernetes: Setting up net-tools (1.60+git20180626.aebd88e-1ubuntu1) ...
yandex.kubernetes: Processing triggers for man-db (2.9.1-1) ...
yandex.kubernetes:
yandex.kubernetes: Suggested packages:
yandex.kubernetes:   ifupdown
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   bridge-utils
yandex.kubernetes: 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: changed: [default] => (item=bridge-utils) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "bridge-utils"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes: Reading package lists...
yandex.kubernetes: Building dependency tree...
yandex.kubernetes: Reading state information...
yandex.kubernetes: Suggested packages:
yandex.kubernetes:   ifupdown
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   bridge-utils
yandex.kubernetes: 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: Need to get 30.5 kB of archives.
yandex.kubernetes: After this operation, 112 kB of additional disk space will be used.
yandex.kubernetes: Get:1 http://mirror.yandex.ru/ubuntu focal/main amd64 bridge-utils amd64 1.6-2ubuntu1 [30.5 kB]
yandex.kubernetes: Fetched 30.5 kB in 0s (1214 kB/s)
yandex.kubernetes: Selecting previously unselected package bridge-utils.
(Reading database ... 102672 files and directories currently installed.)
yandex.kubernetes: Preparing to unpack .../bridge-utils_1.6-2ubuntu1_amd64.deb ...
yandex.kubernetes: Unpacking bridge-utils (1.6-2ubuntu1) ...
yandex.kubernetes: Setting up bridge-utils (1.6-2ubuntu1) ...
yandex.kubernetes: Processing triggers for man-db (2.9.1-1) ...
yandex.kubernetes:
yandex.kubernetes: ok: [default] => (item=vim) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428169,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "vim"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Add GPG key] ****************************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:29
yandex.kubernetes: [WARNING]: Module remote_tmp /root/.ansible/tmp did not exist and was created
yandex.kubernetes: with a mode of 0700, this may cause issues when running as another user. To
yandex.kubernetes: avoid this, create the remote_tmp dir with the correct permissions manually
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "after": [
yandex.kubernetes:         "8D81803C0EBFCD88",
yandex.kubernetes:         "7EA0A9C3F273FCD8"
yandex.kubernetes:     ],
yandex.kubernetes:     "before": [],
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "fp": "8D81803C0EBFCD88",
yandex.kubernetes:     "id": "8D81803C0EBFCD88",
yandex.kubernetes:     "key_id": "8D81803C0EBFCD88",
yandex.kubernetes:     "short_id": "0EBFCD88"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Add docker repository to apt] ***********************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:35
yandex.kubernetes: --- before: /dev/null
yandex.kubernetes: +++ after: /etc/apt/sources.list.d/docker.list
yandex.kubernetes: @@ -0,0 +1 @@
yandex.kubernetes: +deb https://download.docker.com/linux/ubuntu focal stable
yandex.kubernetes:
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "repo": "deb https://download.docker.com/linux/ubuntu focal stable",
yandex.kubernetes:     "sources_added": [
yandex.kubernetes:         "/etc/apt/sources.list.d/docker.list"
yandex.kubernetes:     ],
yandex.kubernetes:     "sources_removed": [],
yandex.kubernetes:     "state": "present"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Install docker] *************************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:41
yandex.kubernetes: The following additional packages will be installed:
yandex.kubernetes:   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
yandex.kubernetes:   docker-compose-plugin git git-man libcurl3-gnutls liberror-perl
yandex.kubernetes:   libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz slirp4netns
yandex.kubernetes: Suggested packages:
yandex.kubernetes:   aufs-tools cgroupfs-mount | cgroup-lite git-daemon-run | git-daemon-sysvinit
yandex.kubernetes:   git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn
yandex.kubernetes:   diffutils-doc perl-doc libterm-readline-gnu-perl
yandex.kubernetes:   | libterm-readline-perl-perl make libb-debug-perl liblocale-codes-perl
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
yandex.kubernetes:   docker-ce-rootless-extras docker-compose-plugin git git-man libcurl3-gnutls
yandex.kubernetes:   liberror-perl libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz
yandex.kubernetes:   slirp4netns
yandex.kubernetes: 0 upgraded, 17 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: changed: [default] => (item=docker-ce) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428206,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "docker-ce"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes: Reading package lists...
yandex.kubernetes: Building dependency tree...
yandex.kubernetes: Reading state information...
yandex.kubernetes: The following additional packages will be installed:
yandex.kubernetes:   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
yandex.kubernetes:   docker-compose-plugin git git-man libcurl3-gnutls liberror-perl
yandex.kubernetes:   libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz slirp4netns
yandex.kubernetes: Suggested packages:
yandex.kubernetes:   aufs-tools cgroupfs-mount | cgroup-lite git-daemon-run | git-daemon-sysvinit
yandex.kubernetes:   git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn
yandex.kubernetes:   diffutils-doc perl-doc libterm-readline-gnu-perl
yandex.kubernetes:   | libterm-readline-perl-perl make libb-debug-perl liblocale-codes-perl
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
yandex.kubernetes:   docker-ce-rootless-extras docker-compose-plugin git git-man libcurl3-gnutls
yandex.kubernetes:   liberror-perl libgdbm-compat4 libperl5.30 patch perl perl-modules-5.30 pigz
yandex.kubernetes:   slirp4netns
yandex.kubernetes: 0 upgraded, 17 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: Need to get 127 MB of archives.
yandex.kubernetes: After this operation, 495 MB of additional disk space will be used.
yandex.kubernetes: Get:1 http://mirror.yandex.ru/ubuntu focal-updates/main amd64 perl-modules-5.30 all 5.30.0-9ubuntu0.4 [2739 kB]
yandex.kubernetes: Get:2 http://mirror.yandex.ru/ubuntu focal/main amd64 libgdbm-compat4 amd64 1.18.1-5 [6244 B]
yandex.kubernetes: Get:3 http://mirror.yandex.ru/ubuntu focal-updates/main amd64 libperl5.30 amd64 5.30.0-9ubuntu0.4 [3959 kB]
yandex.kubernetes: Get:4 https://download.docker.com/linux/ubuntu focal/stable amd64 containerd.io amd64 1.6.24-1 [28.6 MB]
yandex.kubernetes: Get:5 http://mirror.yandex.ru/ubuntu focal-updates/main amd64 perl amd64 5.30.0-9ubuntu0.4 [224 kB]
yandex.kubernetes: Get:6 http://mirror.yandex.ru/ubuntu focal/universe amd64 pigz amd64 2.4-1 [57.4 kB]
yandex.kubernetes: Get:7 http://mirror.yandex.ru/ubuntu focal-updates/main amd64 libcurl3-gnutls amd64 7.68.0-1ubuntu2.19 [233 kB]
yandex.kubernetes: Get:8 http://mirror.yandex.ru/ubuntu focal/main amd64 liberror-perl all 0.17029-1 [26.5 kB]
yandex.kubernetes: Get:9 http://mirror.yandex.ru/ubuntu focal-updates/main amd64 git-man all 1:2.25.1-1ubuntu3.11 [887 kB]
yandex.kubernetes: Get:10 http://mirror.yandex.ru/ubuntu focal-updates/main amd64 git amd64 1:2.25.1-1ubuntu3.11 [4605 kB]
yandex.kubernetes: Get:11 http://mirror.yandex.ru/ubuntu focal/main amd64 patch amd64 2.7.6-6 [105 kB]
yandex.kubernetes: Get:12 http://mirror.yandex.ru/ubuntu focal/universe amd64 slirp4netns amd64 0.4.3-1 [74.3 kB]
yandex.kubernetes: Get:13 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-buildx-plugin amd64 0.11.2-1~ubuntu.20.04~focal [28.2 MB]
yandex.kubernetes: Get:14 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce-cli amd64 5:24.0.6-1~ubuntu.20.04~focal [13.3 MB]
yandex.kubernetes: Get:15 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce amd64 5:24.0.6-1~ubuntu.20.04~focal [22.6 MB]
yandex.kubernetes: Get:16 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce-rootless-extras amd64 5:24.0.6-1~ubuntu.20.04~focal [9038 kB]
yandex.kubernetes: Get:17 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-compose-plugin amd64 2.21.0-1~ubuntu.20.04~focal [11.9 MB]
yandex.kubernetes: Fetched 127 MB in 3s (37.8 MB/s)
yandex.kubernetes: Selecting previously unselected package perl-modules-5.30.
(Reading database ... 102702 files and directories currently installed.)
yandex.kubernetes: Preparing to unpack .../00-perl-modules-5.30_5.30.0-9ubuntu0.4_all.deb ...
yandex.kubernetes: Unpacking perl-modules-5.30 (5.30.0-9ubuntu0.4) ...
yandex.kubernetes: Selecting previously unselected package libgdbm-compat4:amd64.
yandex.kubernetes: Preparing to unpack .../01-libgdbm-compat4_1.18.1-5_amd64.deb ...
yandex.kubernetes: Unpacking libgdbm-compat4:amd64 (1.18.1-5) ...
yandex.kubernetes: Selecting previously unselected package libperl5.30:amd64.
yandex.kubernetes: Preparing to unpack .../02-libperl5.30_5.30.0-9ubuntu0.4_amd64.deb ...
yandex.kubernetes: Unpacking libperl5.30:amd64 (5.30.0-9ubuntu0.4) ...
yandex.kubernetes: Selecting previously unselected package perl.
yandex.kubernetes: Preparing to unpack .../03-perl_5.30.0-9ubuntu0.4_amd64.deb ...
yandex.kubernetes: Unpacking perl (5.30.0-9ubuntu0.4) ...
yandex.kubernetes: Selecting previously unselected package pigz.
yandex.kubernetes: Preparing to unpack .../04-pigz_2.4-1_amd64.deb ...
yandex.kubernetes: Unpacking pigz (2.4-1) ...
yandex.kubernetes: Selecting previously unselected package containerd.io.
yandex.kubernetes: Preparing to unpack .../05-containerd.io_1.6.24-1_amd64.deb ...
yandex.kubernetes: Unpacking containerd.io (1.6.24-1) ...
yandex.kubernetes: Selecting previously unselected package docker-buildx-plugin.
yandex.kubernetes: Preparing to unpack .../06-docker-buildx-plugin_0.11.2-1~ubuntu.20.04~focal_amd64.deb ...
yandex.kubernetes: Unpacking docker-buildx-plugin (0.11.2-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Selecting previously unselected package docker-ce-cli.
yandex.kubernetes: Preparing to unpack .../07-docker-ce-cli_5%3a24.0.6-1~ubuntu.20.04~focal_amd64.deb ...
yandex.kubernetes: Unpacking docker-ce-cli (5:24.0.6-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Selecting previously unselected package docker-ce.
yandex.kubernetes: Preparing to unpack .../08-docker-ce_5%3a24.0.6-1~ubuntu.20.04~focal_amd64.deb ...
yandex.kubernetes: Unpacking docker-ce (5:24.0.6-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Selecting previously unselected package docker-ce-rootless-extras.
yandex.kubernetes: Preparing to unpack .../09-docker-ce-rootless-extras_5%3a24.0.6-1~ubuntu.20.04~focal_amd64.deb ...
yandex.kubernetes: Unpacking docker-ce-rootless-extras (5:24.0.6-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Selecting previously unselected package docker-compose-plugin.
yandex.kubernetes: Preparing to unpack .../10-docker-compose-plugin_2.21.0-1~ubuntu.20.04~focal_amd64.deb ...
yandex.kubernetes: Unpacking docker-compose-plugin (2.21.0-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Selecting previously unselected package libcurl3-gnutls:amd64.
yandex.kubernetes: Preparing to unpack .../11-libcurl3-gnutls_7.68.0-1ubuntu2.19_amd64.deb ...
yandex.kubernetes: Unpacking libcurl3-gnutls:amd64 (7.68.0-1ubuntu2.19) ...
yandex.kubernetes: Selecting previously unselected package liberror-perl.
yandex.kubernetes: Preparing to unpack .../12-liberror-perl_0.17029-1_all.deb ...
yandex.kubernetes: Unpacking liberror-perl (0.17029-1) ...
yandex.kubernetes: Selecting previously unselected package git-man.
yandex.kubernetes: Preparing to unpack .../13-git-man_1%3a2.25.1-1ubuntu3.11_all.deb ...
yandex.kubernetes: Unpacking git-man (1:2.25.1-1ubuntu3.11) ...
yandex.kubernetes: Selecting previously unselected package git.
yandex.kubernetes: Preparing to unpack .../14-git_1%3a2.25.1-1ubuntu3.11_amd64.deb ...
yandex.kubernetes: Unpacking git (1:2.25.1-1ubuntu3.11) ...
yandex.kubernetes: Selecting previously unselected package patch.
yandex.kubernetes: Preparing to unpack .../15-patch_2.7.6-6_amd64.deb ...
yandex.kubernetes: Unpacking patch (2.7.6-6) ...
yandex.kubernetes: Selecting previously unselected package slirp4netns.
yandex.kubernetes: Preparing to unpack .../16-slirp4netns_0.4.3-1_amd64.deb ...
yandex.kubernetes: Unpacking slirp4netns (0.4.3-1) ...
yandex.kubernetes: Setting up perl-modules-5.30 (5.30.0-9ubuntu0.4) ...
yandex.kubernetes: Setting up slirp4netns (0.4.3-1) ...
yandex.kubernetes: Setting up libcurl3-gnutls:amd64 (7.68.0-1ubuntu2.19) ...
yandex.kubernetes: Setting up docker-buildx-plugin (0.11.2-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Setting up containerd.io (1.6.24-1) ...
yandex.kubernetes: Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
yandex.kubernetes: Setting up patch (2.7.6-6) ...
yandex.kubernetes: Setting up libgdbm-compat4:amd64 (1.18.1-5) ...
yandex.kubernetes: Setting up docker-compose-plugin (2.21.0-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Setting up docker-ce-cli (5:24.0.6-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Setting up pigz (2.4-1) ...
yandex.kubernetes: Setting up libperl5.30:amd64 (5.30.0-9ubuntu0.4) ...
yandex.kubernetes: Setting up git-man (1:2.25.1-1ubuntu3.11) ...
yandex.kubernetes: Setting up docker-ce-rootless-extras (5:24.0.6-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Setting up perl (5.30.0-9ubuntu0.4) ...
yandex.kubernetes: Setting up docker-ce (5:24.0.6-1~ubuntu.20.04~focal) ...
yandex.kubernetes: Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
yandex.kubernetes: Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
yandex.kubernetes: Setting up liberror-perl (0.17029-1) ...
yandex.kubernetes: Setting up git (1:2.25.1-1ubuntu3.11) ...
yandex.kubernetes: Processing triggers for systemd (245.4-4ubuntu3.22) ...
yandex.kubernetes: Processing triggers for man-db (2.9.1-1) ...
yandex.kubernetes: Processing triggers for libc-bin (2.31-0ubuntu9.9) ...
yandex.kubernetes:
yandex.kubernetes: ok: [default] => (item=docker-ce-cli) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428206,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "docker-ce-cli"
yandex.kubernetes: }
yandex.kubernetes: ok: [default] => (item=containerd.io) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "cache_update_time": 1696428206,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "item": "containerd.io"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Creating a file with content] ***********************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:51
yandex.kubernetes: Notification for handler Reload docker service has been saved.
yandex.kubernetes: --- before
yandex.kubernetes: +++ after: /home/elnone/.ansible/tmp/ansible-local-5599617c00xauq/tmpvo92fgl6
yandex.kubernetes: @@ -0,0 +1,3 @@
yandex.kubernetes: +{
yandex.kubernetes: +  "exec-opts": ["native.cgroupdriver=systemd"]
yandex.kubernetes: +}
yandex.kubernetes:
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "checksum": "16f2b4e934df4d619935ab61a4473e8c651a1db8",
yandex.kubernetes:     "dest": "/etc/docker/daemon.json",
yandex.kubernetes:     "gid": 0,
yandex.kubernetes:     "group": "root",
yandex.kubernetes:     "md5sum": "d46c0495e6c7f7f9a8b0b2c7d4e898c6",
yandex.kubernetes:     "mode": "0644",
yandex.kubernetes:     "owner": "root",
yandex.kubernetes:     "size": 51,
yandex.kubernetes:     "src": "/home/ubuntu/.ansible/tmp/ansible-tmp-1696428262.2055876-561559-94988104599820/source",
yandex.kubernetes:     "state": "file",
yandex.kubernetes:     "uid": 0
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Check docker is active] *****************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:61
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "enabled": true,
yandex.kubernetes:     "name": "docker",
yandex.kubernetes:     "state": "started",
yandex.kubernetes:     "status": {
yandex.kubernetes:         "ActiveEnterTimestamp": "Wed 2023-10-04 14:04:01 UTC",
yandex.kubernetes:         "ActiveEnterTimestampMonotonic": "130832826",
yandex.kubernetes:         "ActiveExitTimestampMonotonic": "0",
yandex.kubernetes:         "ActiveState": "active",
yandex.kubernetes:         "After": "sysinit.target systemd-journald.socket containerd.service firewalld.service basic.target time-set.target system.slice docker.socket network-online.target",
yandex.kubernetes:         "AllowIsolate": "no",
yandex.kubernetes:         "AllowedCPUs": "",
yandex.kubernetes:         "AllowedMemoryNodes": "",
yandex.kubernetes:         "AmbientCapabilities": "",
yandex.kubernetes:         "AssertResult": "yes",
yandex.kubernetes:         "AssertTimestamp": "Wed 2023-10-04 14:03:59 UTC",
yandex.kubernetes:         "AssertTimestampMonotonic": "129032406",
yandex.kubernetes:         "Before": "multi-user.target shutdown.target",
yandex.kubernetes:         "BlockIOAccounting": "no",
yandex.kubernetes:         "BlockIOWeight": "[not set]",
yandex.kubernetes:         "CPUAccounting": "no",
yandex.kubernetes:         "CPUAffinity": "",
yandex.kubernetes:         "CPUAffinityFromNUMA": "no",
yandex.kubernetes:         "CPUQuotaPerSecUSec": "infinity",
yandex.kubernetes:         "CPUQuotaPeriodUSec": "infinity",
yandex.kubernetes:         "CPUSchedulingPolicy": "0",
yandex.kubernetes:         "CPUSchedulingPriority": "0",
yandex.kubernetes:         "CPUSchedulingResetOnFork": "no",
yandex.kubernetes:         "CPUShares": "[not set]",
yandex.kubernetes:         "CPUUsageNSec": "[not set]",
yandex.kubernetes:         "CPUWeight": "[not set]",
yandex.kubernetes:         "CacheDirectoryMode": "0755",
yandex.kubernetes:         "CanIsolate": "no",
yandex.kubernetes:         "CanReload": "yes",
yandex.kubernetes:         "CanStart": "yes",
yandex.kubernetes:         "CanStop": "yes",
yandex.kubernetes:         "CapabilityBoundingSet": "cap_chown cap_dac_override cap_dac_read_search cap_fowner cap_fsetid cap_kill cap_setgid cap_setuid cap_setpcap cap_linux_immutable cap_net_bind_service cap_net_broadcast cap_net_admin cap_net_raw cap_ipc_lock cap_ipc_owner cap_sys_module cap_sys_rawio cap_sys_chroot cap_sys_ptrace cap_sys_pacct cap_sys_admin cap_sys_boot cap_sys_nice cap_sys_resource cap_sys_time cap_sys_tty_config cap_mknod cap_lease cap_audit_write cap_audit_control cap_setfcap cap_mac_override cap_mac_admin cap_syslog cap_wake_alarm cap_block_suspend cap_audit_read",
yandex.kubernetes:         "CleanResult": "success",
yandex.kubernetes:         "CollectMode": "inactive",
yandex.kubernetes:         "ConditionResult": "yes",
yandex.kubernetes:         "ConditionTimestamp": "Wed 2023-10-04 14:03:59 UTC",
yandex.kubernetes:         "ConditionTimestampMonotonic": "129032406",
yandex.kubernetes:         "ConfigurationDirectoryMode": "0755",
yandex.kubernetes:         "Conflicts": "shutdown.target",
yandex.kubernetes:         "ControlGroup": "/system.slice/docker.service",
yandex.kubernetes:         "ControlPID": "0",
yandex.kubernetes:         "DefaultDependencies": "yes",
yandex.kubernetes:         "DefaultMemoryLow": "0",
yandex.kubernetes:         "DefaultMemoryMin": "0",
yandex.kubernetes:         "Delegate": "yes",
yandex.kubernetes:         "DelegateControllers": "cpu cpuacct cpuset io blkio memory devices pids bpf-firewall bpf-devices",
yandex.kubernetes:         "Description": "Docker Application Container Engine",
yandex.kubernetes:         "DevicePolicy": "auto",
yandex.kubernetes:         "Documentation": "https://docs.docker.com",
yandex.kubernetes:         "DynamicUser": "no",
yandex.kubernetes:         "EffectiveCPUs": "",
yandex.kubernetes:         "EffectiveMemoryNodes": "",
yandex.kubernetes:         "ExecMainCode": "0",
yandex.kubernetes:         "ExecMainExitTimestampMonotonic": "0",
yandex.kubernetes:         "ExecMainPID": "5553",
yandex.kubernetes:         "ExecMainStartTimestamp": "Wed 2023-10-04 14:03:59 UTC",
yandex.kubernetes:         "ExecMainStartTimestampMonotonic": "129033490",
yandex.kubernetes:         "ExecMainStatus": "0",
yandex.kubernetes:         "ExecReload": "{ path=/bin/kill ; argv[]=/bin/kill -s HUP $MAINPID ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecReloadEx": "{ path=/bin/kill ; argv[]=/bin/kill -s HUP $MAINPID ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecStart": "{ path=/usr/bin/dockerd ; argv[]=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecStartEx": "{ path=/usr/bin/dockerd ; argv[]=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "FailureAction": "none",
yandex.kubernetes:         "FileDescriptorStoreMax": "0",
yandex.kubernetes:         "FinalKillSignal": "9",
yandex.kubernetes:         "FragmentPath": "/lib/systemd/system/docker.service",
yandex.kubernetes:         "GID": "[not set]",
yandex.kubernetes:         "GuessMainPID": "yes",
yandex.kubernetes:         "IOAccounting": "no",
yandex.kubernetes:         "IOReadBytes": "18446744073709551615",
yandex.kubernetes:         "IOReadOperations": "18446744073709551615",
yandex.kubernetes:         "IOSchedulingClass": "0",
yandex.kubernetes:         "IOSchedulingPriority": "0",
yandex.kubernetes:         "IOWeight": "[not set]",
yandex.kubernetes:         "IOWriteBytes": "18446744073709551615",
yandex.kubernetes:         "IOWriteOperations": "18446744073709551615",
yandex.kubernetes:         "IPAccounting": "no",
yandex.kubernetes:         "IPEgressBytes": "[no data]",
yandex.kubernetes:         "IPEgressPackets": "[no data]",
yandex.kubernetes:         "IPIngressBytes": "[no data]",
yandex.kubernetes:         "IPIngressPackets": "[no data]",
yandex.kubernetes:         "Id": "docker.service",
yandex.kubernetes:         "IgnoreOnIsolate": "no",
yandex.kubernetes:         "IgnoreSIGPIPE": "yes",
yandex.kubernetes:         "InactiveEnterTimestampMonotonic": "0",
yandex.kubernetes:         "InactiveExitTimestamp": "Wed 2023-10-04 14:03:59 UTC",
yandex.kubernetes:         "InactiveExitTimestampMonotonic": "129033811",
yandex.kubernetes:         "InvocationID": "6ea8be666aa54b078f513a5908e6e877",
yandex.kubernetes:         "JobRunningTimeoutUSec": "infinity",
yandex.kubernetes:         "JobTimeoutAction": "none",
yandex.kubernetes:         "JobTimeoutUSec": "infinity",
yandex.kubernetes:         "KeyringMode": "private",
yandex.kubernetes:         "KillMode": "process",
yandex.kubernetes:         "KillSignal": "15",
yandex.kubernetes:         "LimitAS": "infinity",
yandex.kubernetes:         "LimitASSoft": "infinity",
yandex.kubernetes:         "LimitCORE": "infinity",
yandex.kubernetes:         "LimitCORESoft": "infinity",
yandex.kubernetes:         "LimitCPU": "infinity",
yandex.kubernetes:         "LimitCPUSoft": "infinity",
yandex.kubernetes:         "LimitDATA": "infinity",
yandex.kubernetes:         "LimitDATASoft": "infinity",
yandex.kubernetes:         "LimitFSIZE": "infinity",
yandex.kubernetes:         "LimitFSIZESoft": "infinity",
yandex.kubernetes:         "LimitLOCKS": "infinity",
yandex.kubernetes:         "LimitLOCKSSoft": "infinity",
yandex.kubernetes:         "LimitMEMLOCK": "65536",
yandex.kubernetes:         "LimitMEMLOCKSoft": "65536",
yandex.kubernetes:         "LimitMSGQUEUE": "819200",
yandex.kubernetes:         "LimitMSGQUEUESoft": "819200",
yandex.kubernetes:         "LimitNICE": "0",
yandex.kubernetes:         "LimitNICESoft": "0",
yandex.kubernetes:         "LimitNOFILE": "infinity",
yandex.kubernetes:         "LimitNOFILESoft": "infinity",
yandex.kubernetes:         "LimitNPROC": "infinity",
yandex.kubernetes:         "LimitNPROCSoft": "infinity",
yandex.kubernetes:         "LimitRSS": "infinity",
yandex.kubernetes:         "LimitRSSSoft": "infinity",
yandex.kubernetes:         "LimitRTPRIO": "0",
yandex.kubernetes:         "LimitRTPRIOSoft": "0",
yandex.kubernetes:         "LimitRTTIME": "infinity",
yandex.kubernetes:         "LimitRTTIMESoft": "infinity",
yandex.kubernetes:         "LimitSIGPENDING": "15436",
yandex.kubernetes:         "LimitSIGPENDINGSoft": "15436",
yandex.kubernetes:         "LimitSTACK": "infinity",
yandex.kubernetes:         "LimitSTACKSoft": "8388608",
yandex.kubernetes:         "LoadState": "loaded",
yandex.kubernetes:         "LockPersonality": "no",
yandex.kubernetes:         "LogLevelMax": "-1",
yandex.kubernetes:         "LogRateLimitBurst": "0",
yandex.kubernetes:         "LogRateLimitIntervalUSec": "0",
yandex.kubernetes:         "LogsDirectoryMode": "0755",
yandex.kubernetes:         "MainPID": "5553",
yandex.kubernetes:         "MemoryAccounting": "yes",
yandex.kubernetes:         "MemoryCurrent": "28696576",
yandex.kubernetes:         "MemoryDenyWriteExecute": "no",
yandex.kubernetes:         "MemoryHigh": "infinity",
yandex.kubernetes:         "MemoryLimit": "infinity",
yandex.kubernetes:         "MemoryLow": "0",
yandex.kubernetes:         "MemoryMax": "infinity",
yandex.kubernetes:         "MemoryMin": "0",
yandex.kubernetes:         "MemorySwapMax": "infinity",
yandex.kubernetes:         "MountAPIVFS": "no",
yandex.kubernetes:         "MountFlags": "",
yandex.kubernetes:         "NFileDescriptorStore": "0",
yandex.kubernetes:         "NRestarts": "0",
yandex.kubernetes:         "NUMAMask": "",
yandex.kubernetes:         "NUMAPolicy": "n/a",
yandex.kubernetes:         "Names": "docker.service",
yandex.kubernetes:         "NeedDaemonReload": "no",
yandex.kubernetes:         "Nice": "0",
yandex.kubernetes:         "NoNewPrivileges": "no",
yandex.kubernetes:         "NonBlocking": "no",
yandex.kubernetes:         "NotifyAccess": "main",
yandex.kubernetes:         "OOMPolicy": "continue",
yandex.kubernetes:         "OOMScoreAdjust": "-500",
yandex.kubernetes:         "OnFailureJobMode": "replace",
yandex.kubernetes:         "Perpetual": "no",
yandex.kubernetes:         "PrivateDevices": "no",
yandex.kubernetes:         "PrivateMounts": "no",
yandex.kubernetes:         "PrivateNetwork": "no",
yandex.kubernetes:         "PrivateTmp": "no",
yandex.kubernetes:         "PrivateUsers": "no",
yandex.kubernetes:         "ProtectControlGroups": "no",
yandex.kubernetes:         "ProtectHome": "no",
yandex.kubernetes:         "ProtectHostname": "no",
yandex.kubernetes:         "ProtectKernelLogs": "no",
yandex.kubernetes:         "ProtectKernelModules": "no",
yandex.kubernetes:         "ProtectKernelTunables": "no",
yandex.kubernetes:         "ProtectSystem": "no",
yandex.kubernetes:         "RefuseManualStart": "no",
yandex.kubernetes:         "RefuseManualStop": "no",
yandex.kubernetes:         "ReloadResult": "success",
yandex.kubernetes:         "RemainAfterExit": "no",
yandex.kubernetes:         "RemoveIPC": "no",
yandex.kubernetes:         "Requires": "system.slice sysinit.target docker.socket",
yandex.kubernetes:         "Restart": "always",
yandex.kubernetes:         "RestartKillSignal": "15",
yandex.kubernetes:         "RestartUSec": "2s",
yandex.kubernetes:         "RestrictNamespaces": "no",
yandex.kubernetes:         "RestrictRealtime": "no",
yandex.kubernetes:         "RestrictSUIDSGID": "no",
yandex.kubernetes:         "Result": "success",
yandex.kubernetes:         "RootDirectoryStartOnly": "no",
yandex.kubernetes:         "RuntimeDirectoryMode": "0755",
yandex.kubernetes:         "RuntimeDirectoryPreserve": "no",
yandex.kubernetes:         "RuntimeMaxUSec": "infinity",
yandex.kubernetes:         "SameProcessGroup": "no",
yandex.kubernetes:         "SecureBits": "0",
yandex.kubernetes:         "SendSIGHUP": "no",
yandex.kubernetes:         "SendSIGKILL": "yes",
yandex.kubernetes:         "Slice": "system.slice",
yandex.kubernetes:         "StandardError": "inherit",
yandex.kubernetes:         "StandardInput": "null",
yandex.kubernetes:         "StandardInputData": "",
yandex.kubernetes:         "StandardOutput": "journal",
yandex.kubernetes:         "StartLimitAction": "none",
yandex.kubernetes:         "StartLimitBurst": "3",
yandex.kubernetes:         "StartLimitIntervalUSec": "1min",
yandex.kubernetes:         "StartupBlockIOWeight": "[not set]",
yandex.kubernetes:         "StartupCPUShares": "[not set]",
yandex.kubernetes:         "StartupCPUWeight": "[not set]",
yandex.kubernetes:         "StartupIOWeight": "[not set]",
yandex.kubernetes:         "StateChangeTimestamp": "Wed 2023-10-04 14:04:01 UTC",
yandex.kubernetes:         "StateChangeTimestampMonotonic": "130832826",
yandex.kubernetes:         "StateDirectoryMode": "0755",
yandex.kubernetes:         "StatusErrno": "0",
yandex.kubernetes:         "StopWhenUnneeded": "no",
yandex.kubernetes:         "SubState": "running",
yandex.kubernetes:         "SuccessAction": "none",
yandex.kubernetes:         "SyslogFacility": "3",
yandex.kubernetes:         "SyslogLevel": "6",
yandex.kubernetes:         "SyslogLevelPrefix": "yes",
yandex.kubernetes:         "SyslogPriority": "30",
yandex.kubernetes:         "SystemCallErrorNumber": "0",
yandex.kubernetes:         "TTYReset": "no",
yandex.kubernetes:         "TTYVHangup": "no",
yandex.kubernetes:         "TTYVTDisallocate": "no",
yandex.kubernetes:         "TasksAccounting": "yes",
yandex.kubernetes:         "TasksCurrent": "10",
yandex.kubernetes:         "TasksMax": "infinity",
yandex.kubernetes:         "TimeoutAbortUSec": "1min 30s",
yandex.kubernetes:         "TimeoutCleanUSec": "infinity",
yandex.kubernetes:         "TimeoutStartUSec": "infinity",
yandex.kubernetes:         "TimeoutStopUSec": "1min 30s",
yandex.kubernetes:         "TimerSlackNSec": "50000",
yandex.kubernetes:         "Transient": "no",
yandex.kubernetes:         "TriggeredBy": "docker.socket",
yandex.kubernetes:         "Type": "notify",
yandex.kubernetes:         "UID": "[not set]",
yandex.kubernetes:         "UMask": "0022",
yandex.kubernetes:         "UnitFilePreset": "enabled",
yandex.kubernetes:         "UnitFileState": "enabled",
yandex.kubernetes:         "UtmpMode": "init",
yandex.kubernetes:         "WantedBy": "multi-user.target",
yandex.kubernetes:         "Wants": "network-online.target containerd.service",
yandex.kubernetes:         "WatchdogSignal": "6",
yandex.kubernetes:         "WatchdogTimestampMonotonic": "0",
yandex.kubernetes:         "WatchdogUSec": "0"
yandex.kubernetes:     }
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Ensure group "docker" exists] ***********************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:67
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "gid": 998,
yandex.kubernetes:     "name": "docker",
yandex.kubernetes:     "state": "present",
yandex.kubernetes:     "system": false
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Adding ubuntu to docker group] **********************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:72
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "append": true,
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "comment": "Ubuntu",
yandex.kubernetes:     "group": 1001,
yandex.kubernetes:     "groups": "docker",
yandex.kubernetes:     "home": "/home/ubuntu",
yandex.kubernetes:     "move_home": false,
yandex.kubernetes:     "name": "ubuntu",
yandex.kubernetes:     "shell": "/bin/bash",
yandex.kubernetes:     "state": "present",
yandex.kubernetes:     "uid": 1000
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Install docker-compose] *****************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:78
yandex.kubernetes: Notification for handler Docker Compose Standalone version has been saved.
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "checksum_dest": null,
yandex.kubernetes:     "checksum_src": "cae8721954ba460e699338c4de99a09f1a24f52e",
yandex.kubernetes:     "dest": "/usr/local/bin/docker-compose",
yandex.kubernetes:     "elapsed": 2,
yandex.kubernetes:     "gid": 0,
yandex.kubernetes:     "group": "root",
yandex.kubernetes:     "md5sum": "9a5adbbae1d0dfe98fbf9eaf2c5091c3",
yandex.kubernetes:     "mode": "0754",
yandex.kubernetes:     "owner": "root",
yandex.kubernetes:     "size": 59383631,
yandex.kubernetes:     "src": "/root/.ansible/tmp/ansible-moduletmp-1696428265.5488064-7w2c_nba/tmpcj7povx1",
yandex.kubernetes:     "state": "file",
yandex.kubernetes:     "status_code": 200,
yandex.kubernetes:     "uid": 0,
yandex.kubernetes:     "url": "https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-linux-x86_64"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: OK (59383631 bytes)
yandex.kubernetes:
yandex.kubernetes: TASK [docker : Change file ownership, group and permissions] *******************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/tasks/main.yml:85
yandex.kubernetes: --- before
yandex.kubernetes: +++ after
yandex.kubernetes: @@ -1,6 +1,6 @@
yandex.kubernetes:  {
yandex.kubernetes: -    "group": 0,
yandex.kubernetes: -    "mode": "0754",
yandex.kubernetes: -    "owner": 0,
yandex.kubernetes: +    "group": 998,
yandex.kubernetes: +    "mode": "0755",
yandex.kubernetes: +    "owner": 1000,
yandex.kubernetes:      "path": "/usr/local/bin/docker-compose"
yandex.kubernetes:  }
yandex.kubernetes:
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "gid": 998,
yandex.kubernetes:     "group": "docker",
yandex.kubernetes:     "mode": "0755",
yandex.kubernetes:     "owner": "ubuntu",
yandex.kubernetes:     "path": "/usr/local/bin/docker-compose",
yandex.kubernetes:     "size": 59383631,
yandex.kubernetes:     "state": "file",
yandex.kubernetes:     "uid": 1000
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Remove swapfile from /etc/fstab] ****************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:2
yandex.kubernetes: ok: [default] => (item=swap) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "backup_file": "",
yandex.kubernetes:     "boot": "yes",
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "dump": "0",
yandex.kubernetes:     "fstab": "/etc/fstab",
yandex.kubernetes:     "fstype": "swap",
yandex.kubernetes:     "item": "swap",
yandex.kubernetes:     "name": "swap",
yandex.kubernetes:     "opts": "defaults",
yandex.kubernetes:     "passno": "0"
yandex.kubernetes: }
yandex.kubernetes: ok: [default] => (item=none) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "backup_file": "",
yandex.kubernetes:     "boot": "yes",
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "dump": "0",
yandex.kubernetes:     "fstab": "/etc/fstab",
yandex.kubernetes:     "fstype": "swap",
yandex.kubernetes:     "item": "none",
yandex.kubernetes:     "name": "none",
yandex.kubernetes:     "opts": "defaults",
yandex.kubernetes:     "passno": "0"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Check swap] *************************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:11
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "cmd": [
yandex.kubernetes:         "/sbin/swapon",
yandex.kubernetes:         "-s"
yandex.kubernetes:     ],
yandex.kubernetes:     "delta": "0:00:00.007199",
yandex.kubernetes:     "end": "2023-10-04 14:04:28.989922",
yandex.kubernetes:     "rc": 0,
yandex.kubernetes:     "start": "2023-10-04 14:04:28.982723"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Disable swap] ***********************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:16
yandex.kubernetes: skipping: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "false_condition": "swapon.stdout",
yandex.kubernetes:     "skip_reason": "Conditional result was False"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Disable swap in fstab (Kubeadm requirement)] ****************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:22
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "backup": "",
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "found": 0
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Create an empty file for the Containerd module] *************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:28
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "checksum": "da39a3ee5e6b4b0d3255bfef95601890afd80709",
yandex.kubernetes:     "dest": "/etc/modules-load.d/containerd.conf",
yandex.kubernetes:     "gid": 0,
yandex.kubernetes:     "group": "root",
yandex.kubernetes:     "md5sum": "d41d8cd98f00b204e9800998ecf8427e",
yandex.kubernetes:     "mode": "0644",
yandex.kubernetes:     "owner": "root",
yandex.kubernetes:     "size": 0,
yandex.kubernetes:     "src": "/home/ubuntu/.ansible/tmp/ansible-tmp-1696428269.4563868-561727-266438246477268/source",
yandex.kubernetes:     "state": "file",
yandex.kubernetes:     "uid": 0
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Configure modules for Containerd] ***************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:34
yandex.kubernetes: --- before: /etc/modules-load.d/containerd.conf (content)
yandex.kubernetes: +++ after: /etc/modules-load.d/containerd.conf (content)
yandex.kubernetes: @@ -0,0 +1,4 @@
yandex.kubernetes: +# BEGIN ANSIBLE MANAGED BLOCK
yandex.kubernetes: +overlay
yandex.kubernetes: +br_netfilter
yandex.kubernetes: +# END ANSIBLE MANAGED BLOCK
yandex.kubernetes:
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: Block inserted
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Create an empty file for Kubernetes sysctl params] **********
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:41
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "checksum": "da39a3ee5e6b4b0d3255bfef95601890afd80709",
yandex.kubernetes:     "dest": "/etc/sysctl.d/99-kubernetes-cri.conf",
yandex.kubernetes:     "gid": 0,
yandex.kubernetes:     "group": "root",
yandex.kubernetes:     "md5sum": "d41d8cd98f00b204e9800998ecf8427e",
yandex.kubernetes:     "mode": "0644",
yandex.kubernetes:     "owner": "root",
yandex.kubernetes:     "size": 0,
yandex.kubernetes:     "src": "/home/ubuntu/.ansible/tmp/ansible-tmp-1696428270.5670726-561748-38298702314243/source",
yandex.kubernetes:     "state": "file",
yandex.kubernetes:     "uid": 0
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Configure sysctl params for Kubernetes] *********************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:47
yandex.kubernetes: --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
yandex.kubernetes: +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
yandex.kubernetes: @@ -0,0 +1 @@
yandex.kubernetes: +net.ipv4.ip_forward = 1
yandex.kubernetes:
yandex.kubernetes: changed: [default] => (item=net.ipv4.ip_forward = 1) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "backup": "",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "net.ipv4.ip_forward = 1"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: line added
yandex.kubernetes: --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
yandex.kubernetes: +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
yandex.kubernetes: @@ -1 +1,2 @@
yandex.kubernetes:  net.ipv4.ip_forward = 1
yandex.kubernetes: +net.bridge.bridge-nf-call-iptables = 1
yandex.kubernetes:
yandex.kubernetes: changed: [default] => (item=net.bridge.bridge-nf-call-iptables = 1) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "backup": "",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "net.bridge.bridge-nf-call-iptables = 1"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: line added
yandex.kubernetes: --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
yandex.kubernetes: +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
yandex.kubernetes: @@ -1,2 +1,3 @@
yandex.kubernetes:  net.ipv4.ip_forward = 1
yandex.kubernetes:  net.bridge.bridge-nf-call-iptables = 1
yandex.kubernetes: +net.bridge.bridge-nf-call-ip6tables = 1
yandex.kubernetes:
yandex.kubernetes: changed: [default] => (item=net.bridge.bridge-nf-call-ip6tables = 1) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "backup": "",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "net.bridge.bridge-nf-call-ip6tables = 1"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: line added
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Load br_netfilter kernel module] ****************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:56
yandex.kubernetes: redirecting (type: modules) ansible.builtin.modprobe to community.general.modprobe
yandex.kubernetes: redirecting (type: modules) ansible.builtin.modprobe to community.general.modprobe
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "name": "br_netfilter",
yandex.kubernetes:     "params": "",
yandex.kubernetes:     "state": "present"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Let iptables see bridged traffic.] **************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:61
yandex.kubernetes: redirecting (type: modules) ansible.builtin.sysctl to ansible.posix.sysctl
yandex.kubernetes: redirecting (type: modules) ansible.builtin.sysctl to ansible.posix.sysctl
yandex.kubernetes: changed: [default] => (item=net.ipv4.ip_forward) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "net.ipv4.ip_forward"
yandex.kubernetes: }
yandex.kubernetes: redirecting (type: modules) ansible.builtin.sysctl to ansible.posix.sysctl
yandex.kubernetes: redirecting (type: modules) ansible.builtin.sysctl to ansible.posix.sysctl
yandex.kubernetes: changed: [default] => (item=net.bridge.bridge-nf-call-iptables) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "net.bridge.bridge-nf-call-iptables"
yandex.kubernetes: }
yandex.kubernetes: redirecting (type: modules) ansible.builtin.sysctl to ansible.posix.sysctl
yandex.kubernetes: redirecting (type: modules) ansible.builtin.sysctl to ansible.posix.sysctl
yandex.kubernetes: changed: [default] => (item=net.bridge.bridge-nf-call-ip6tables) => {
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "net.bridge.bridge-nf-call-ip6tables"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Verify system variables are set] ****************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:71
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "cmd": [
yandex.kubernetes:         "sysctl",
yandex.kubernetes:         "net.bridge.bridge-nf-call-iptables",
yandex.kubernetes:         "net.bridge.bridge-nf-call-ip6tables",
yandex.kubernetes:         "net.ipv4.ip_forward"
yandex.kubernetes:     ],
yandex.kubernetes:     "delta": "0:00:00.003199",
yandex.kubernetes:     "end": "2023-10-04 14:04:33.168928",
yandex.kubernetes:     "rc": 0,
yandex.kubernetes:     "start": "2023-10-04 14:04:33.165729"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes: net.bridge.bridge-nf-call-iptables = 1
yandex.kubernetes: net.bridge.bridge-nf-call-ip6tables = 1
yandex.kubernetes: net.ipv4.ip_forward = 1
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : debug] ******************************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:75
yandex.kubernetes: ok: [default] => {}
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: net.bridge.bridge-nf-call-iptables = 1
yandex.kubernetes: net.bridge.bridge-nf-call-ip6tables = 1
yandex.kubernetes: net.ipv4.ip_forward = 1
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Add Kubernetes APT key] *************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:78
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "after": [
yandex.kubernetes:         "B53DC80D13EDEF05",
yandex.kubernetes:         "D0EF1EFEA2A85825",
yandex.kubernetes:         "C0BA5CE6DC6315A3"
yandex.kubernetes:     ],
yandex.kubernetes:     "before": [],
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "fp": "B53DC80D13EDEF05",
yandex.kubernetes:     "id": "B53DC80D13EDEF05",
yandex.kubernetes:     "key_id": "B53DC80D13EDEF05",
yandex.kubernetes:     "short_id": "13EDEF05"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Add Kubernetes' APT repository] *****************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:84
yandex.kubernetes: --- before: /dev/null
yandex.kubernetes: +++ after: /etc/apt/sources.list.d/kubernetes.list
yandex.kubernetes: @@ -0,0 +1 @@
yandex.kubernetes: +deb http://apt.kubernetes.io/ kubernetes-xenial main
yandex.kubernetes:
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "repo": "deb http://apt.kubernetes.io/ kubernetes-xenial main",
yandex.kubernetes:     "sources_added": [
yandex.kubernetes:         "/etc/apt/sources.list.d/kubernetes.list"
yandex.kubernetes:     ],
yandex.kubernetes:     "sources_removed": [],
yandex.kubernetes:     "state": "present"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Configure containerd] ***************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:90
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "gid": 0,
yandex.kubernetes:     "group": "root",
yandex.kubernetes:     "mode": "0755",
yandex.kubernetes:     "owner": "root",
yandex.kubernetes:     "path": "/etc/containerd",
yandex.kubernetes:     "size": 4096,
yandex.kubernetes:     "state": "directory",
yandex.kubernetes:     "uid": 0
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Configure containerd] ***************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:95
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "cmd": "/usr/bin/containerd config default > /etc/containerd/config.toml",
yandex.kubernetes:     "delta": "0:00:00.042367",
yandex.kubernetes:     "end": "2023-10-04 14:04:38.683292",
yandex.kubernetes:     "rc": 0,
yandex.kubernetes:     "start": "2023-10-04 14:04:38.640925"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Configuring the systemd cgroup driver for containerd] *******
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:98
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "backup_file": "/etc/containerd/config.toml.9288.2023-10-04@14:04:39~",
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "rc": 0
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: 1 replacements made
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Add the systemd cgroup driver for containerd] ***************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:107
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "backup": "",
yandex.kubernetes:     "changed": false
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Show the file content] **************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:114
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "cmd": "grep -A1 '.containerd.runtimes.runc.options' /etc/containerd/config.toml",
yandex.kubernetes:     "delta": "0:00:00.004453",
yandex.kubernetes:     "end": "2023-10-04 14:04:39.474579",
yandex.kubernetes:     "rc": 0,
yandex.kubernetes:     "start": "2023-10-04 14:04:39.470126"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes:           [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
yandex.kubernetes:             BinaryName = ""
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Enable containerd service, and start it] ********************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:117
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "enabled": true,
yandex.kubernetes:     "name": "containerd",
yandex.kubernetes:     "state": "started",
yandex.kubernetes:     "status": {
yandex.kubernetes:         "ActiveEnterTimestamp": "Wed 2023-10-04 14:03:57 UTC",
yandex.kubernetes:         "ActiveEnterTimestampMonotonic": "126929732",
yandex.kubernetes:         "ActiveExitTimestampMonotonic": "0",
yandex.kubernetes:         "ActiveState": "active",
yandex.kubernetes:         "After": "systemd-journald.socket sysinit.target system.slice network.target local-fs.target basic.target",
yandex.kubernetes:         "AllowIsolate": "no",
yandex.kubernetes:         "AllowedCPUs": "",
yandex.kubernetes:         "AllowedMemoryNodes": "",
yandex.kubernetes:         "AmbientCapabilities": "",
yandex.kubernetes:         "AssertResult": "yes",
yandex.kubernetes:         "AssertTimestamp": "Wed 2023-10-04 14:03:57 UTC",
yandex.kubernetes:         "AssertTimestampMonotonic": "126736083",
yandex.kubernetes:         "Before": "multi-user.target docker.service shutdown.target",
yandex.kubernetes:         "BlockIOAccounting": "no",
yandex.kubernetes:         "BlockIOWeight": "[not set]",
yandex.kubernetes:         "CPUAccounting": "no",
yandex.kubernetes:         "CPUAffinity": "",
yandex.kubernetes:         "CPUAffinityFromNUMA": "no",
yandex.kubernetes:         "CPUQuotaPerSecUSec": "infinity",
yandex.kubernetes:         "CPUQuotaPeriodUSec": "infinity",
yandex.kubernetes:         "CPUSchedulingPolicy": "0",
yandex.kubernetes:         "CPUSchedulingPriority": "0",
yandex.kubernetes:         "CPUSchedulingResetOnFork": "no",
yandex.kubernetes:         "CPUShares": "[not set]",
yandex.kubernetes:         "CPUUsageNSec": "[not set]",
yandex.kubernetes:         "CPUWeight": "[not set]",
yandex.kubernetes:         "CacheDirectoryMode": "0755",
yandex.kubernetes:         "CanIsolate": "no",
yandex.kubernetes:         "CanReload": "no",
yandex.kubernetes:         "CanStart": "yes",
yandex.kubernetes:         "CanStop": "yes",
yandex.kubernetes:         "CapabilityBoundingSet": "cap_chown cap_dac_override cap_dac_read_search cap_fowner cap_fsetid cap_kill cap_setgid cap_setuid cap_setpcap cap_linux_immutable cap_net_bind_service cap_net_broadcast cap_net_admin cap_net_raw cap_ipc_lock cap_ipc_owner cap_sys_module cap_sys_rawio cap_sys_chroot cap_sys_ptrace cap_sys_pacct cap_sys_admin cap_sys_boot cap_sys_nice cap_sys_resource cap_sys_time cap_sys_tty_config cap_mknod cap_lease cap_audit_write cap_audit_control cap_setfcap cap_mac_override cap_mac_admin cap_syslog cap_wake_alarm cap_block_suspend cap_audit_read",
yandex.kubernetes:         "CleanResult": "success",
yandex.kubernetes:         "CollectMode": "inactive",
yandex.kubernetes:         "ConditionResult": "yes",
yandex.kubernetes:         "ConditionTimestamp": "Wed 2023-10-04 14:03:57 UTC",
yandex.kubernetes:         "ConditionTimestampMonotonic": "126736083",
yandex.kubernetes:         "ConfigurationDirectoryMode": "0755",
yandex.kubernetes:         "Conflicts": "shutdown.target",
yandex.kubernetes:         "ControlGroup": "/system.slice/containerd.service",
yandex.kubernetes:         "ControlPID": "0",
yandex.kubernetes:         "DefaultDependencies": "yes",
yandex.kubernetes:         "DefaultMemoryLow": "0",
yandex.kubernetes:         "DefaultMemoryMin": "0",
yandex.kubernetes:         "Delegate": "yes",
yandex.kubernetes:         "DelegateControllers": "cpu cpuacct cpuset io blkio memory devices pids bpf-firewall bpf-devices",
yandex.kubernetes:         "Description": "containerd container runtime",
yandex.kubernetes:         "DevicePolicy": "auto",
yandex.kubernetes:         "Documentation": "https://containerd.io",
yandex.kubernetes:         "DynamicUser": "no",
yandex.kubernetes:         "EffectiveCPUs": "",
yandex.kubernetes:         "EffectiveMemoryNodes": "",
yandex.kubernetes:         "ExecMainCode": "0",
yandex.kubernetes:         "ExecMainExitTimestampMonotonic": "0",
yandex.kubernetes:         "ExecMainPID": "5389",
yandex.kubernetes:         "ExecMainStartTimestamp": "Wed 2023-10-04 14:03:57 UTC",
yandex.kubernetes:         "ExecMainStartTimestampMonotonic": "126773936",
yandex.kubernetes:         "ExecMainStatus": "0",
yandex.kubernetes:         "ExecStart": "{ path=/usr/bin/containerd ; argv[]=/usr/bin/containerd ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecStartEx": "{ path=/usr/bin/containerd ; argv[]=/usr/bin/containerd ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecStartPre": "{ path=/sbin/modprobe ; argv[]=/sbin/modprobe overlay ; ignore_errors=yes ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecStartPreEx": "{ path=/sbin/modprobe ; argv[]=/sbin/modprobe overlay ; flags=ignore-failure ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "FailureAction": "none",
yandex.kubernetes:         "FileDescriptorStoreMax": "0",
yandex.kubernetes:         "FinalKillSignal": "9",
yandex.kubernetes:         "FragmentPath": "/lib/systemd/system/containerd.service",
yandex.kubernetes:         "GID": "[not set]",
yandex.kubernetes:         "GuessMainPID": "yes",
yandex.kubernetes:         "IOAccounting": "no",
yandex.kubernetes:         "IOReadBytes": "18446744073709551615",
yandex.kubernetes:         "IOReadOperations": "18446744073709551615",
yandex.kubernetes:         "IOSchedulingClass": "0",
yandex.kubernetes:         "IOSchedulingPriority": "0",
yandex.kubernetes:         "IOWeight": "[not set]",
yandex.kubernetes:         "IOWriteBytes": "18446744073709551615",
yandex.kubernetes:         "IOWriteOperations": "18446744073709551615",
yandex.kubernetes:         "IPAccounting": "no",
yandex.kubernetes:         "IPEgressBytes": "[no data]",
yandex.kubernetes:         "IPEgressPackets": "[no data]",
yandex.kubernetes:         "IPIngressBytes": "[no data]",
yandex.kubernetes:         "IPIngressPackets": "[no data]",
yandex.kubernetes:         "Id": "containerd.service",
yandex.kubernetes:         "IgnoreOnIsolate": "no",
yandex.kubernetes:         "IgnoreSIGPIPE": "yes",
yandex.kubernetes:         "InactiveEnterTimestampMonotonic": "0",
yandex.kubernetes:         "InactiveExitTimestamp": "Wed 2023-10-04 14:03:57 UTC",
yandex.kubernetes:         "InactiveExitTimestampMonotonic": "126737600",
yandex.kubernetes:         "InvocationID": "36a4cb8c8d814d8a90e7786a1f09f941",
yandex.kubernetes:         "JobRunningTimeoutUSec": "infinity",
yandex.kubernetes:         "JobTimeoutAction": "none",
yandex.kubernetes:         "JobTimeoutUSec": "infinity",
yandex.kubernetes:         "KeyringMode": "private",
yandex.kubernetes:         "KillMode": "process",
yandex.kubernetes:         "KillSignal": "15",
yandex.kubernetes:         "LimitAS": "infinity",
yandex.kubernetes:         "LimitASSoft": "infinity",
yandex.kubernetes:         "LimitCORE": "infinity",
yandex.kubernetes:         "LimitCORESoft": "infinity",
yandex.kubernetes:         "LimitCPU": "infinity",
yandex.kubernetes:         "LimitCPUSoft": "infinity",
yandex.kubernetes:         "LimitDATA": "infinity",
yandex.kubernetes:         "LimitDATASoft": "infinity",
yandex.kubernetes:         "LimitFSIZE": "infinity",
yandex.kubernetes:         "LimitFSIZESoft": "infinity",
yandex.kubernetes:         "LimitLOCKS": "infinity",
yandex.kubernetes:         "LimitLOCKSSoft": "infinity",
yandex.kubernetes:         "LimitMEMLOCK": "65536",
yandex.kubernetes:         "LimitMEMLOCKSoft": "65536",
yandex.kubernetes:         "LimitMSGQUEUE": "819200",
yandex.kubernetes:         "LimitMSGQUEUESoft": "819200",
yandex.kubernetes:         "LimitNICE": "0",
yandex.kubernetes:         "LimitNICESoft": "0",
yandex.kubernetes:         "LimitNOFILE": "infinity",
yandex.kubernetes:         "LimitNOFILESoft": "infinity",
yandex.kubernetes:         "LimitNPROC": "infinity",
yandex.kubernetes:         "LimitNPROCSoft": "infinity",
yandex.kubernetes:         "LimitRSS": "infinity",
yandex.kubernetes:         "LimitRSSSoft": "infinity",
yandex.kubernetes:         "LimitRTPRIO": "0",
yandex.kubernetes:         "LimitRTPRIOSoft": "0",
yandex.kubernetes:         "LimitRTTIME": "infinity",
yandex.kubernetes:         "LimitRTTIMESoft": "infinity",
yandex.kubernetes:         "LimitSIGPENDING": "15436",
yandex.kubernetes:         "LimitSIGPENDINGSoft": "15436",
yandex.kubernetes:         "LimitSTACK": "infinity",
yandex.kubernetes:         "LimitSTACKSoft": "8388608",
yandex.kubernetes:         "LoadState": "loaded",
yandex.kubernetes:         "LockPersonality": "no",
yandex.kubernetes:         "LogLevelMax": "-1",
yandex.kubernetes:         "LogRateLimitBurst": "0",
yandex.kubernetes:         "LogRateLimitIntervalUSec": "0",
yandex.kubernetes:         "LogsDirectoryMode": "0755",
yandex.kubernetes:         "MainPID": "5389",
yandex.kubernetes:         "MemoryAccounting": "yes",
yandex.kubernetes:         "MemoryCurrent": "14942208",
yandex.kubernetes:         "MemoryDenyWriteExecute": "no",
yandex.kubernetes:         "MemoryHigh": "infinity",
yandex.kubernetes:         "MemoryLimit": "infinity",
yandex.kubernetes:         "MemoryLow": "0",
yandex.kubernetes:         "MemoryMax": "infinity",
yandex.kubernetes:         "MemoryMin": "0",
yandex.kubernetes:         "MemorySwapMax": "infinity",
yandex.kubernetes:         "MountAPIVFS": "no",
yandex.kubernetes:         "MountFlags": "",
yandex.kubernetes:         "NFileDescriptorStore": "0",
yandex.kubernetes:         "NRestarts": "0",
yandex.kubernetes:         "NUMAMask": "",
yandex.kubernetes:         "NUMAPolicy": "n/a",
yandex.kubernetes:         "Names": "containerd.service",
yandex.kubernetes:         "NeedDaemonReload": "no",
yandex.kubernetes:         "Nice": "0",
yandex.kubernetes:         "NoNewPrivileges": "no",
yandex.kubernetes:         "NonBlocking": "no",
yandex.kubernetes:         "NotifyAccess": "main",
yandex.kubernetes:         "OOMPolicy": "continue",
yandex.kubernetes:         "OOMScoreAdjust": "-999",
yandex.kubernetes:         "OnFailureJobMode": "replace",
yandex.kubernetes:         "Perpetual": "no",
yandex.kubernetes:         "PrivateDevices": "no",
yandex.kubernetes:         "PrivateMounts": "no",
yandex.kubernetes:         "PrivateNetwork": "no",
yandex.kubernetes:         "PrivateTmp": "no",
yandex.kubernetes:         "PrivateUsers": "no",
yandex.kubernetes:         "ProtectControlGroups": "no",
yandex.kubernetes:         "ProtectHome": "no",
yandex.kubernetes:         "ProtectHostname": "no",
yandex.kubernetes:         "ProtectKernelLogs": "no",
yandex.kubernetes:         "ProtectKernelModules": "no",
yandex.kubernetes:         "ProtectKernelTunables": "no",
yandex.kubernetes:         "ProtectSystem": "no",
yandex.kubernetes:         "RefuseManualStart": "no",
yandex.kubernetes:         "RefuseManualStop": "no",
yandex.kubernetes:         "ReloadResult": "success",
yandex.kubernetes:         "RemainAfterExit": "no",
yandex.kubernetes:         "RemoveIPC": "no",
yandex.kubernetes:         "Requires": "system.slice sysinit.target",
yandex.kubernetes:         "Restart": "always",
yandex.kubernetes:         "RestartKillSignal": "15",
yandex.kubernetes:         "RestartUSec": "5s",
yandex.kubernetes:         "RestrictNamespaces": "no",
yandex.kubernetes:         "RestrictRealtime": "no",
yandex.kubernetes:         "RestrictSUIDSGID": "no",
yandex.kubernetes:         "Result": "success",
yandex.kubernetes:         "RootDirectoryStartOnly": "no",
yandex.kubernetes:         "RuntimeDirectoryMode": "0755",
yandex.kubernetes:         "RuntimeDirectoryPreserve": "no",
yandex.kubernetes:         "RuntimeMaxUSec": "infinity",
yandex.kubernetes:         "SameProcessGroup": "no",
yandex.kubernetes:         "SecureBits": "0",
yandex.kubernetes:         "SendSIGHUP": "no",
yandex.kubernetes:         "SendSIGKILL": "yes",
yandex.kubernetes:         "Slice": "system.slice",
yandex.kubernetes:         "StandardError": "inherit",
yandex.kubernetes:         "StandardInput": "null",
yandex.kubernetes:         "StandardInputData": "",
yandex.kubernetes:         "StandardOutput": "journal",
yandex.kubernetes:         "StartLimitAction": "none",
yandex.kubernetes:         "StartLimitBurst": "5",
yandex.kubernetes:         "StartLimitIntervalUSec": "10s",
yandex.kubernetes:         "StartupBlockIOWeight": "[not set]",
yandex.kubernetes:         "StartupCPUShares": "[not set]",
yandex.kubernetes:         "StartupCPUWeight": "[not set]",
yandex.kubernetes:         "StartupIOWeight": "[not set]",
yandex.kubernetes:         "StateChangeTimestamp": "Wed 2023-10-04 14:03:57 UTC",
yandex.kubernetes:         "StateChangeTimestampMonotonic": "126929732",
yandex.kubernetes:         "StateDirectoryMode": "0755",
yandex.kubernetes:         "StatusErrno": "0",
yandex.kubernetes:         "StopWhenUnneeded": "no",
yandex.kubernetes:         "SubState": "running",
yandex.kubernetes:         "SuccessAction": "none",
yandex.kubernetes:         "SyslogFacility": "3",
yandex.kubernetes:         "SyslogLevel": "6",
yandex.kubernetes:         "SyslogLevelPrefix": "yes",
yandex.kubernetes:         "SyslogPriority": "30",
yandex.kubernetes:         "SystemCallErrorNumber": "0",
yandex.kubernetes:         "TTYReset": "no",
yandex.kubernetes:         "TTYVHangup": "no",
yandex.kubernetes:         "TTYVTDisallocate": "no",
yandex.kubernetes:         "TasksAccounting": "yes",
yandex.kubernetes:         "TasksCurrent": "10",
yandex.kubernetes:         "TasksMax": "infinity",
yandex.kubernetes:         "TimeoutAbortUSec": "1min 30s",
yandex.kubernetes:         "TimeoutCleanUSec": "infinity",
yandex.kubernetes:         "TimeoutStartUSec": "1min 30s",
yandex.kubernetes:         "TimeoutStopUSec": "1min 30s",
yandex.kubernetes:         "TimerSlackNSec": "50000",
yandex.kubernetes:         "Transient": "no",
yandex.kubernetes:         "Type": "notify",
yandex.kubernetes:         "UID": "[not set]",
yandex.kubernetes:         "UMask": "0022",
yandex.kubernetes:         "UnitFilePreset": "enabled",
yandex.kubernetes:         "UnitFileState": "enabled",
yandex.kubernetes:         "UtmpMode": "init",
yandex.kubernetes:         "WantedBy": "multi-user.target docker.service",
yandex.kubernetes:         "WatchdogSignal": "6",
yandex.kubernetes:         "WatchdogTimestampMonotonic": "0",
yandex.kubernetes:         "WatchdogUSec": "0"
yandex.kubernetes:     }
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Installing kubernetes] **************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:124
yandex.kubernetes: The following additional packages will be installed:
yandex.kubernetes:   conntrack cri-tools ebtables ethtool kubernetes-cni socat
yandex.kubernetes: Suggested packages:
yandex.kubernetes:   nftables
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   conntrack cri-tools ebtables ethtool kubeadm kubectl kubelet kubernetes-cni
yandex.kubernetes:   socat
yandex.kubernetes: 0 upgraded, 9 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "cache_update_time": 1696428277,
yandex.kubernetes:     "cache_updated": false,
yandex.kubernetes:     "changed": true
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes: Reading package lists...
yandex.kubernetes: Building dependency tree...
yandex.kubernetes: Reading state information...
yandex.kubernetes: The following additional packages will be installed:
yandex.kubernetes:   conntrack cri-tools ebtables ethtool kubernetes-cni socat
yandex.kubernetes: Suggested packages:
yandex.kubernetes:   nftables
yandex.kubernetes: The following NEW packages will be installed:
yandex.kubernetes:   conntrack cri-tools ebtables ethtool kubeadm kubectl kubelet kubernetes-cni
yandex.kubernetes:   socat
yandex.kubernetes: 0 upgraded, 9 newly installed, 0 to remove and 5 not upgraded.
yandex.kubernetes: Need to get 87.2 MB of archives.
yandex.kubernetes: After this operation, 337 MB of additional disk space will be used.
yandex.kubernetes: Get:1 http://mirror.yandex.ru/ubuntu focal/main amd64 conntrack amd64 1:1.4.5-2 [30.3 kB]
yandex.kubernetes: Get:2 http://mirror.yandex.ru/ubuntu focal/main amd64 ebtables amd64 2.0.11-3build1 [80.3 kB]
yandex.kubernetes: Get:3 http://mirror.yandex.ru/ubuntu focal/main amd64 ethtool amd64 1:5.4-1 [134 kB]
yandex.kubernetes: Get:4 http://mirror.yandex.ru/ubuntu focal/main amd64 socat amd64 1.7.3.3-2 [323 kB]
yandex.kubernetes: Get:5 https://packages.cloud.google.com/apt kubernetes-xenial/main amd64 cri-tools amd64 1.26.0-00 [18.9 MB]
yandex.kubernetes: Get:6 https://packages.cloud.google.com/apt kubernetes-xenial/main amd64 kubernetes-cni amd64 1.2.0-00 [27.6 MB]
yandex.kubernetes: Get:7 https://packages.cloud.google.com/apt kubernetes-xenial/main amd64 kubelet amd64 1.28.2-00 [19.5 MB]
yandex.kubernetes: Get:8 https://packages.cloud.google.com/apt kubernetes-xenial/main amd64 kubectl amd64 1.28.2-00 [10.3 MB]
yandex.kubernetes: Get:9 https://packages.cloud.google.com/apt kubernetes-xenial/main amd64 kubeadm amd64 1.28.2-00 [10.3 MB]
yandex.kubernetes: Fetched 87.2 MB in 2s (37.9 MB/s)
yandex.kubernetes: Selecting previously unselected package conntrack.
(Reading database ... 105853 files and directories currently installed.)
yandex.kubernetes: Preparing to unpack .../0-conntrack_1%3a1.4.5-2_amd64.deb ...
yandex.kubernetes: Unpacking conntrack (1:1.4.5-2) ...
yandex.kubernetes: Selecting previously unselected package cri-tools.
yandex.kubernetes: Preparing to unpack .../1-cri-tools_1.26.0-00_amd64.deb ...
yandex.kubernetes: Unpacking cri-tools (1.26.0-00) ...
yandex.kubernetes: Selecting previously unselected package ebtables.
yandex.kubernetes: Preparing to unpack .../2-ebtables_2.0.11-3build1_amd64.deb ...
yandex.kubernetes: Unpacking ebtables (2.0.11-3build1) ...
yandex.kubernetes: Selecting previously unselected package ethtool.
yandex.kubernetes: Preparing to unpack .../3-ethtool_1%3a5.4-1_amd64.deb ...
yandex.kubernetes: Unpacking ethtool (1:5.4-1) ...
yandex.kubernetes: Selecting previously unselected package kubernetes-cni.
yandex.kubernetes: Preparing to unpack .../4-kubernetes-cni_1.2.0-00_amd64.deb ...
yandex.kubernetes: Unpacking kubernetes-cni (1.2.0-00) ...
yandex.kubernetes: Selecting previously unselected package socat.
yandex.kubernetes: Preparing to unpack .../5-socat_1.7.3.3-2_amd64.deb ...
yandex.kubernetes: Unpacking socat (1.7.3.3-2) ...
yandex.kubernetes: Selecting previously unselected package kubelet.
yandex.kubernetes: Preparing to unpack .../6-kubelet_1.28.2-00_amd64.deb ...
yandex.kubernetes: Unpacking kubelet (1.28.2-00) ...
yandex.kubernetes: Selecting previously unselected package kubectl.
yandex.kubernetes: Preparing to unpack .../7-kubectl_1.28.2-00_amd64.deb ...
yandex.kubernetes: Unpacking kubectl (1.28.2-00) ...
yandex.kubernetes: Selecting previously unselected package kubeadm.
yandex.kubernetes: Preparing to unpack .../8-kubeadm_1.28.2-00_amd64.deb ...
yandex.kubernetes: Unpacking kubeadm (1.28.2-00) ...
yandex.kubernetes: Setting up conntrack (1:1.4.5-2) ...
yandex.kubernetes: Setting up kubectl (1.28.2-00) ...
yandex.kubernetes: Setting up ebtables (2.0.11-3build1) ...
yandex.kubernetes: Setting up socat (1.7.3.3-2) ...
yandex.kubernetes: Setting up cri-tools (1.26.0-00) ...
yandex.kubernetes: Setting up kubernetes-cni (1.2.0-00) ...
yandex.kubernetes: Setting up ethtool (1:5.4-1) ...
yandex.kubernetes: Setting up kubelet (1.28.2-00) ...
yandex.kubernetes: Created symlink /etc/systemd/system/multi-user.target.wants/kubelet.service → /lib/systemd/system/kubelet.service.
yandex.kubernetes: Setting up kubeadm (1.28.2-00) ...
yandex.kubernetes: Processing triggers for man-db (2.9.1-1) ...
yandex.kubernetes:
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Enable service kubelet] *************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:132
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "enabled": true,
yandex.kubernetes:     "name": "kubelet",
yandex.kubernetes:     "status": {
yandex.kubernetes:         "ActiveEnterTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "ActiveEnterTimestampMonotonic": "195900198",
yandex.kubernetes:         "ActiveExitTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "ActiveExitTimestampMonotonic": "195962078",
yandex.kubernetes:         "ActiveState": "activating",
yandex.kubernetes:         "After": "network-online.target basic.target sysinit.target system.slice systemd-journald.socket",
yandex.kubernetes:         "AllowIsolate": "no",
yandex.kubernetes:         "AllowedCPUs": "",
yandex.kubernetes:         "AllowedMemoryNodes": "",
yandex.kubernetes:         "AmbientCapabilities": "",
yandex.kubernetes:         "AssertResult": "yes",
yandex.kubernetes:         "AssertTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "AssertTimestampMonotonic": "195898591",
yandex.kubernetes:         "Before": "multi-user.target shutdown.target",
yandex.kubernetes:         "BlockIOAccounting": "no",
yandex.kubernetes:         "BlockIOWeight": "[not set]",
yandex.kubernetes:         "CPUAccounting": "no",
yandex.kubernetes:         "CPUAffinity": "",
yandex.kubernetes:         "CPUAffinityFromNUMA": "no",
yandex.kubernetes:         "CPUQuotaPerSecUSec": "infinity",
yandex.kubernetes:         "CPUQuotaPeriodUSec": "infinity",
yandex.kubernetes:         "CPUSchedulingPolicy": "0",
yandex.kubernetes:         "CPUSchedulingPriority": "0",
yandex.kubernetes:         "CPUSchedulingResetOnFork": "no",
yandex.kubernetes:         "CPUShares": "[not set]",
yandex.kubernetes:         "CPUUsageNSec": "[not set]",
yandex.kubernetes:         "CPUWeight": "[not set]",
yandex.kubernetes:         "CacheDirectoryMode": "0755",
yandex.kubernetes:         "CanIsolate": "no",
yandex.kubernetes:         "CanReload": "no",
yandex.kubernetes:         "CanStart": "yes",
yandex.kubernetes:         "CanStop": "yes",
yandex.kubernetes:         "CapabilityBoundingSet": "cap_chown cap_dac_override cap_dac_read_search cap_fowner cap_fsetid cap_kill cap_setgid cap_setuid cap_setpcap cap_linux_immutable cap_net_bind_service cap_net_broadcast cap_net_admin cap_net_raw cap_ipc_lock cap_ipc_owner cap_sys_module cap_sys_rawio cap_sys_chroot cap_sys_ptrace cap_sys_pacct cap_sys_admin cap_sys_boot cap_sys_nice cap_sys_resource cap_sys_time cap_sys_tty_config cap_mknod cap_lease cap_audit_write cap_audit_control cap_setfcap cap_mac_override cap_mac_admin cap_syslog cap_wake_alarm cap_block_suspend cap_audit_read",
yandex.kubernetes:         "CleanResult": "success",
yandex.kubernetes:         "CollectMode": "inactive",
yandex.kubernetes:         "ConditionResult": "yes",
yandex.kubernetes:         "ConditionTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "ConditionTimestampMonotonic": "195898590",
yandex.kubernetes:         "ConfigurationDirectoryMode": "0755",
yandex.kubernetes:         "Conflicts": "shutdown.target",
yandex.kubernetes:         "ControlPID": "0",
yandex.kubernetes:         "DefaultDependencies": "yes",
yandex.kubernetes:         "DefaultMemoryLow": "0",
yandex.kubernetes:         "DefaultMemoryMin": "0",
yandex.kubernetes:         "Delegate": "no",
yandex.kubernetes:         "Description": "kubelet: The Kubernetes Node Agent",
yandex.kubernetes:         "DevicePolicy": "auto",
yandex.kubernetes:         "Documentation": "https://kubernetes.io/docs/home/",
yandex.kubernetes:         "DropInPaths": "/etc/systemd/system/kubelet.service.d/10-kubeadm.conf",
yandex.kubernetes:         "DynamicUser": "no",
yandex.kubernetes:         "EffectiveCPUs": "",
yandex.kubernetes:         "EffectiveMemoryNodes": "",
yandex.kubernetes:         "Environment": "[unprintable] KUBELET_CONFIG_ARGS=--config=/var/lib/kubelet/config.yaml",
yandex.kubernetes:         "EnvironmentFiles": "/etc/default/kubelet (ignore_errors=yes)",
yandex.kubernetes:         "ExecMainCode": "1",
yandex.kubernetes:         "ExecMainExitTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "ExecMainExitTimestampMonotonic": "195961904",
yandex.kubernetes:         "ExecMainPID": "9616",
yandex.kubernetes:         "ExecMainStartTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "ExecMainStartTimestampMonotonic": "195899743",
yandex.kubernetes:         "ExecMainStatus": "1",
yandex.kubernetes:         "ExecStart": "{ path=/usr/bin/kubelet ; argv[]=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS ; ignore_errors=no ; start_time=[Wed 2023-10-04 14:05:06 UTC] ; stop_time=[Wed 2023-10-04 14:05:06 UTC] ; pid=9616 ; code=exited ; status=1 }",
yandex.kubernetes:         "ExecStartEx": "{ path=/usr/bin/kubelet ; argv[]=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS ; flags= ; start_time=[Wed 2023-10-04 14:05:06 UTC] ; stop_time=[Wed 2023-10-04 14:05:06UTC] ; pid=9616 ; code=exited ; status=1 }",
yandex.kubernetes:         "FailureAction": "none",
yandex.kubernetes:         "FileDescriptorStoreMax": "0",
yandex.kubernetes:         "FinalKillSignal": "9",
yandex.kubernetes:         "FragmentPath": "/lib/systemd/system/kubelet.service",
yandex.kubernetes:         "GID": "[not set]",
yandex.kubernetes:         "GuessMainPID": "yes",
yandex.kubernetes:         "IOAccounting": "no",
yandex.kubernetes:         "IOReadBytes": "18446744073709551615",
yandex.kubernetes:         "IOReadOperations": "18446744073709551615",
yandex.kubernetes:         "IOSchedulingClass": "0",
yandex.kubernetes:         "IOSchedulingPriority": "0",
yandex.kubernetes:         "IOWeight": "[not set]",
yandex.kubernetes:         "IOWriteBytes": "18446744073709551615",
yandex.kubernetes:         "IOWriteOperations": "18446744073709551615",
yandex.kubernetes:         "IPAccounting": "no",
yandex.kubernetes:         "IPEgressBytes": "[no data]",
yandex.kubernetes:         "IPEgressPackets": "[no data]",
yandex.kubernetes:         "IPIngressBytes": "[no data]",
yandex.kubernetes:         "IPIngressPackets": "[no data]",
yandex.kubernetes:         "Id": "kubelet.service",
yandex.kubernetes:         "IgnoreOnIsolate": "no",
yandex.kubernetes:         "IgnoreSIGPIPE": "yes",
yandex.kubernetes:         "InactiveEnterTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "InactiveEnterTimestampMonotonic": "195962078",
yandex.kubernetes:         "InactiveExitTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "InactiveExitTimestampMonotonic": "195962739",
yandex.kubernetes:         "InvocationID": "3eba570310b94197bb90df5328341da9",
yandex.kubernetes:         "JobRunningTimeoutUSec": "infinity",
yandex.kubernetes:         "JobTimeoutAction": "none",
yandex.kubernetes:         "JobTimeoutUSec": "infinity",
yandex.kubernetes:         "KeyringMode": "private",
yandex.kubernetes:         "KillMode": "control-group",
yandex.kubernetes:         "KillSignal": "15",
yandex.kubernetes:         "LimitAS": "infinity",
yandex.kubernetes:         "LimitASSoft": "infinity",
yandex.kubernetes:         "LimitCORE": "infinity",
yandex.kubernetes:         "LimitCORESoft": "0",
yandex.kubernetes:         "LimitCPU": "infinity",
yandex.kubernetes:         "LimitCPUSoft": "infinity",
yandex.kubernetes:         "LimitDATA": "infinity",
yandex.kubernetes:         "LimitDATASoft": "infinity",
yandex.kubernetes:         "LimitFSIZE": "infinity",
yandex.kubernetes:         "LimitFSIZESoft": "infinity",
yandex.kubernetes:         "LimitLOCKS": "infinity",
yandex.kubernetes:         "LimitLOCKSSoft": "infinity",
yandex.kubernetes:         "LimitMEMLOCK": "65536",
yandex.kubernetes:         "LimitMEMLOCKSoft": "65536",
yandex.kubernetes:         "LimitMSGQUEUE": "819200",
yandex.kubernetes:         "LimitMSGQUEUESoft": "819200",
yandex.kubernetes:         "LimitNICE": "0",
yandex.kubernetes:         "LimitNICESoft": "0",
yandex.kubernetes:         "LimitNOFILE": "524288",
yandex.kubernetes:         "LimitNOFILESoft": "1024",
yandex.kubernetes:         "LimitNPROC": "15436",
yandex.kubernetes:         "LimitNPROCSoft": "15436",
yandex.kubernetes:         "LimitRSS": "infinity",
yandex.kubernetes:         "LimitRSSSoft": "infinity",
yandex.kubernetes:         "LimitRTPRIO": "0",
yandex.kubernetes:         "LimitRTPRIOSoft": "0",
yandex.kubernetes:         "LimitRTTIME": "infinity",
yandex.kubernetes:         "LimitRTTIMESoft": "infinity",
yandex.kubernetes:         "LimitSIGPENDING": "15436",
yandex.kubernetes:         "LimitSIGPENDINGSoft": "15436",
yandex.kubernetes:         "LimitSTACK": "infinity",
yandex.kubernetes:         "LimitSTACKSoft": "8388608",
yandex.kubernetes:         "LoadState": "loaded",
yandex.kubernetes:         "LockPersonality": "no",
yandex.kubernetes:         "LogLevelMax": "-1",
yandex.kubernetes:         "LogRateLimitBurst": "0",
yandex.kubernetes:         "LogRateLimitIntervalUSec": "0",
yandex.kubernetes:         "LogsDirectoryMode": "0755",
yandex.kubernetes:         "MainPID": "0",
yandex.kubernetes:         "MemoryAccounting": "yes",
yandex.kubernetes:         "MemoryCurrent": "[not set]",
yandex.kubernetes:         "MemoryDenyWriteExecute": "no",
yandex.kubernetes:         "MemoryHigh": "infinity",
yandex.kubernetes:         "MemoryLimit": "infinity",
yandex.kubernetes:         "MemoryLow": "0",
yandex.kubernetes:         "MemoryMax": "infinity",
yandex.kubernetes:         "MemoryMin": "0",
yandex.kubernetes:         "MemorySwapMax": "infinity",
yandex.kubernetes:         "MountAPIVFS": "no",
yandex.kubernetes:         "MountFlags": "",
yandex.kubernetes:         "NFileDescriptorStore": "0",
yandex.kubernetes:         "NRestarts": "0",
yandex.kubernetes:         "NUMAMask": "",
yandex.kubernetes:         "NUMAPolicy": "n/a",
yandex.kubernetes:         "Names": "kubelet.service",
yandex.kubernetes:         "NeedDaemonReload": "no",
yandex.kubernetes:         "Nice": "0",
yandex.kubernetes:         "NoNewPrivileges": "no",
yandex.kubernetes:         "NonBlocking": "no",
yandex.kubernetes:         "NotifyAccess": "none",
yandex.kubernetes:         "OOMPolicy": "stop",
yandex.kubernetes:         "OOMScoreAdjust": "0",
yandex.kubernetes:         "OnFailureJobMode": "replace",
yandex.kubernetes:         "Perpetual": "no",
yandex.kubernetes:         "PrivateDevices": "no",
yandex.kubernetes:         "PrivateMounts": "no",
yandex.kubernetes:         "PrivateNetwork": "no",
yandex.kubernetes:         "PrivateTmp": "no",
yandex.kubernetes:         "PrivateUsers": "no",
yandex.kubernetes:         "ProtectControlGroups": "no",
yandex.kubernetes:         "ProtectHome": "no",
yandex.kubernetes:         "ProtectHostname": "no",
yandex.kubernetes:         "ProtectKernelLogs": "no",
yandex.kubernetes:         "ProtectKernelModules": "no",
yandex.kubernetes:         "ProtectKernelTunables": "no",
yandex.kubernetes:         "ProtectSystem": "no",
yandex.kubernetes:         "RefuseManualStart": "no",
yandex.kubernetes:         "RefuseManualStop": "no",
yandex.kubernetes:         "ReloadResult": "success",
yandex.kubernetes:         "RemainAfterExit": "no",
yandex.kubernetes:         "RemoveIPC": "no",
yandex.kubernetes:         "Requires": "sysinit.target system.slice",
yandex.kubernetes:         "Restart": "always",
yandex.kubernetes:         "RestartKillSignal": "15",
yandex.kubernetes:         "RestartUSec": "10s",
yandex.kubernetes:         "RestrictNamespaces": "no",
yandex.kubernetes:         "RestrictRealtime": "no",
yandex.kubernetes:         "RestrictSUIDSGID": "no",
yandex.kubernetes:         "Result": "exit-code",
yandex.kubernetes:         "RootDirectoryStartOnly": "no",
yandex.kubernetes:         "RuntimeDirectoryMode": "0755",
yandex.kubernetes:         "RuntimeDirectoryPreserve": "no",
yandex.kubernetes:         "RuntimeMaxUSec": "infinity",
yandex.kubernetes:         "SameProcessGroup": "no",
yandex.kubernetes:         "SecureBits": "0",
yandex.kubernetes:         "SendSIGHUP": "no",
yandex.kubernetes:         "SendSIGKILL": "yes",
yandex.kubernetes:         "Slice": "system.slice",
yandex.kubernetes:         "StandardError": "inherit",
yandex.kubernetes:         "StandardInput": "null",
yandex.kubernetes:         "StandardInputData": "",
yandex.kubernetes:         "StandardOutput": "journal",
yandex.kubernetes:         "StartLimitAction": "none",
yandex.kubernetes:         "StartLimitBurst": "5",
yandex.kubernetes:         "StartLimitIntervalUSec": "0",
yandex.kubernetes:         "StartupBlockIOWeight": "[not set]",
yandex.kubernetes:         "StartupCPUShares": "[not set]",
yandex.kubernetes:         "StartupCPUWeight": "[not set]",
yandex.kubernetes:         "StartupIOWeight": "[not set]",
yandex.kubernetes:         "StateChangeTimestamp": "Wed 2023-10-04 14:05:06 UTC",
yandex.kubernetes:         "StateChangeTimestampMonotonic": "195962739",
yandex.kubernetes:         "StateDirectoryMode": "0755",
yandex.kubernetes:         "StatusErrno": "0",
yandex.kubernetes:         "StopWhenUnneeded": "no",
yandex.kubernetes:         "SubState": "auto-restart",
yandex.kubernetes:         "SuccessAction": "none",
yandex.kubernetes:         "SyslogFacility": "3",
yandex.kubernetes:         "SyslogLevel": "6",
yandex.kubernetes:         "SyslogLevelPrefix": "yes",
yandex.kubernetes:         "SyslogPriority": "30",
yandex.kubernetes:         "SystemCallErrorNumber": "0",
yandex.kubernetes:         "TTYReset": "no",
yandex.kubernetes:         "TTYVHangup": "no",
yandex.kubernetes:         "TTYVTDisallocate": "no",
yandex.kubernetes:         "TasksAccounting": "yes",
yandex.kubernetes:         "TasksCurrent": "[not set]",
yandex.kubernetes:         "TasksMax": "4630",
yandex.kubernetes:         "TimeoutAbortUSec": "1min 30s",
yandex.kubernetes:         "TimeoutCleanUSec": "infinity",
yandex.kubernetes:         "TimeoutStartUSec": "1min 30s",
yandex.kubernetes:         "TimeoutStopUSec": "1min 30s",
yandex.kubernetes:         "TimerSlackNSec": "50000",
yandex.kubernetes:         "Transient": "no",
yandex.kubernetes:         "Type": "simple",
yandex.kubernetes:         "UID": "[not set]",
yandex.kubernetes:         "UMask": "0022",
yandex.kubernetes:         "UnitFilePreset": "enabled",
yandex.kubernetes:         "UnitFileState": "enabled",
yandex.kubernetes:         "UtmpMode": "init",
yandex.kubernetes:         "WantedBy": "multi-user.target",
yandex.kubernetes:         "Wants": "network-online.target",
yandex.kubernetes:         "WatchdogSignal": "6",
yandex.kubernetes:         "WatchdogTimestampMonotonic": "0",
yandex.kubernetes:         "WatchdogUSec": "0"
yandex.kubernetes:     }
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Check Kubelet args in Kubelet config] ***********************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:137
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "cmd": "grep \"^Environment=\\\"KUBELET_EXTRA_ARGS=\" /etc/systemd/system/kubelet.service.d/10-kubeadm.conf || true",
yandex.kubernetes:     "delta": "0:00:00.004242",
yandex.kubernetes:     "end": "2023-10-04 14:05:08.216575",
yandex.kubernetes:     "rc": 0,
yandex.kubernetes:     "start": "2023-10-04 14:05:08.212333"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Add runtime args in Kubelet config] *************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:141
yandex.kubernetes: --- before: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf (content)
yandex.kubernetes: +++ after: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf (content)
yandex.kubernetes: @@ -1,7 +1,8 @@
yandex.kubernetes:  # Note: This dropin only works with kubeadm and kubelet v1.11+
yandex.kubernetes:  [Service]
yandex.kubernetes: +Environment="KUBELET_EXTRA_ARGS= --runtime-cgroups=/system.slice/containerd.service --container-runtime-endpoint=unix:///run/containerd/containerd.sock"
yandex.kubernetes:  Environment="KUBELET_KUBECONFIG_ARGS=--bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf"
yandex.kubernetes:  Environment="KUBELET_CONFIG_ARGS=--config=/var/lib/kubelet/config.yaml"
yandex.kubernetes:  # This is a file that "kubeadm init" and "kubeadm join" generates at runtime, populating the KUBELET_KUBEADM_ARGS variable dynamically
yandex.kubernetes:  EnvironmentFile=-/var/lib/kubelet/kubeadm-flags.env
yandex.kubernetes:  # This is a file that the user can use for overrides of the kubelet args as a last resort. Preferably, the user should use
yandex.kubernetes:
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "backup": "",
yandex.kubernetes:     "changed": true
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: MSG:
yandex.kubernetes:
yandex.kubernetes: line added
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Prevent kubernetes from being upgraded] *********************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:148
yandex.kubernetes: changed: [default] => (item=kubelet) => {
yandex.kubernetes:     "after": "hold",
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "before": "install",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "kubelet"
yandex.kubernetes: }
yandex.kubernetes: changed: [default] => (item=kubeadm) => {
yandex.kubernetes:     "after": "hold",
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "before": "install",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "kubeadm"
yandex.kubernetes: }
yandex.kubernetes: changed: [default] => (item=kubectl) => {
yandex.kubernetes:     "after": "hold",
yandex.kubernetes:     "ansible_loop_var": "item",
yandex.kubernetes:     "before": "install",
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "item": "kubectl"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : Reboot all the kubernetes nodes] ****************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:155
==> yandex.kubernetes: dial tcp 158.160.107.164:22: connect: connection refused
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "elapsed": 25,
yandex.kubernetes:     "rebooted": true
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: TASK [kubernetes : pause] ******************************************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/kubernetes/tasks/main.yml:162
yandex.kubernetes: Pausing for 30 seconds
yandex.kubernetes: ok: [default] => {
yandex.kubernetes:     "changed": false,
yandex.kubernetes:     "delta": 30,
yandex.kubernetes:     "echo": true,
yandex.kubernetes:     "rc": 0,
yandex.kubernetes:     "start": "2023-10-04 17:05:36.200649",
yandex.kubernetes:     "stop": "2023-10-04 17:06:06.202393",
yandex.kubernetes:     "user_input": ""
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes: Paused for 30.0 seconds
yandex.kubernetes: NOTIFIED HANDLER docker : Reload docker service for default
yandex.kubernetes: NOTIFIED HANDLER docker : Docker Compose Standalone version for default
yandex.kubernetes:
yandex.kubernetes: RUNNING HANDLER [docker : Docker Compose Standalone version] *******************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/handlers/main.yml:2
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "cmd": [
yandex.kubernetes:         "/usr/local/bin/docker-compose",
yandex.kubernetes:         "version"
yandex.kubernetes:     ],
yandex.kubernetes:     "delta": "0:00:00.955804",
yandex.kubernetes:     "end": "2023-10-04 14:06:07.376208",
yandex.kubernetes:     "rc": 0,
yandex.kubernetes:     "start": "2023-10-04 14:06:06.420404"
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: STDOUT:
yandex.kubernetes:
yandex.kubernetes: Docker Compose version v2.20.3
yandex.kubernetes:
yandex.kubernetes: RUNNING HANDLER [docker : Reload docker service] *******************************
yandex.kubernetes: task path: /home/elnone/Project/aasdhajkshd_microservices/kuternetes/infra/ansible/roles/docker/handlers/main.yml:5
yandex.kubernetes: changed: [default] => {
yandex.kubernetes:     "changed": true,
yandex.kubernetes:     "name": "docker",
yandex.kubernetes:     "state": "started",
yandex.kubernetes:     "status": {
yandex.kubernetes:         "ActiveEnterTimestamp": "Wed 2023-10-04 14:05:39 UTC",
yandex.kubernetes:         "ActiveEnterTimestampMonotonic": "18535130",
yandex.kubernetes:         "ActiveExitTimestampMonotonic": "0",
yandex.kubernetes:         "ActiveState": "active",
yandex.kubernetes:         "After": "network-online.target system.slice time-set.target firewalld.service systemd-journald.socket basic.target docker.socket containerd.service sysinit.target",
yandex.kubernetes:         "AllowIsolate": "no",
yandex.kubernetes:         "AllowedCPUs": "",
yandex.kubernetes:         "AllowedMemoryNodes": "",
yandex.kubernetes:         "AmbientCapabilities": "",
yandex.kubernetes:         "AssertResult": "yes",
yandex.kubernetes:         "AssertTimestamp": "Wed 2023-10-04 14:05:35 UTC",
yandex.kubernetes:         "AssertTimestampMonotonic": "13850909",
yandex.kubernetes:         "Before": "multi-user.target shutdown.target",
yandex.kubernetes:         "BlockIOAccounting": "no",
yandex.kubernetes:         "BlockIOWeight": "[not set]",
yandex.kubernetes:         "CPUAccounting": "no",
yandex.kubernetes:         "CPUAffinity": "",
yandex.kubernetes:         "CPUAffinityFromNUMA": "no",
yandex.kubernetes:         "CPUQuotaPerSecUSec": "infinity",
yandex.kubernetes:         "CPUQuotaPeriodUSec": "infinity",
yandex.kubernetes:         "CPUSchedulingPolicy": "0",
yandex.kubernetes:         "CPUSchedulingPriority": "0",
yandex.kubernetes:         "CPUSchedulingResetOnFork": "no",
yandex.kubernetes:         "CPUShares": "[not set]",
yandex.kubernetes:         "CPUUsageNSec": "[not set]",
yandex.kubernetes:         "CPUWeight": "[not set]",
yandex.kubernetes:         "CacheDirectoryMode": "0755",
yandex.kubernetes:         "CanIsolate": "no",
yandex.kubernetes:         "CanReload": "yes",
yandex.kubernetes:         "CanStart": "yes",
yandex.kubernetes:         "CanStop": "yes",
yandex.kubernetes:         "CapabilityBoundingSet": "cap_chown cap_dac_override cap_dac_read_search cap_fowner cap_fsetid cap_kill cap_setgid cap_setuid cap_setpcap cap_linux_immutable cap_net_bind_service cap_net_broadcast cap_net_admin cap_net_raw cap_ipc_lock cap_ipc_owner cap_sys_module cap_sys_rawio cap_sys_chroot cap_sys_ptrace cap_sys_pacct cap_sys_admin cap_sys_boot cap_sys_nice cap_sys_resource cap_sys_time cap_sys_tty_config cap_mknod cap_lease cap_audit_write cap_audit_control cap_setfcap cap_mac_override cap_mac_admin cap_syslog cap_wake_alarm cap_block_suspend cap_audit_read",
yandex.kubernetes:         "CleanResult": "success",
yandex.kubernetes:         "CollectMode": "inactive",
yandex.kubernetes:         "ConditionResult": "yes",
yandex.kubernetes:         "ConditionTimestamp": "Wed 2023-10-04 14:05:35 UTC",
yandex.kubernetes:         "ConditionTimestampMonotonic": "13850908",
yandex.kubernetes:         "ConfigurationDirectoryMode": "0755",
yandex.kubernetes:         "Conflicts": "shutdown.target",
yandex.kubernetes:         "ControlGroup": "/system.slice/docker.service",
yandex.kubernetes:         "ControlPID": "0",
yandex.kubernetes:         "DefaultDependencies": "yes",
yandex.kubernetes:         "DefaultMemoryLow": "0",
yandex.kubernetes:         "DefaultMemoryMin": "0",
yandex.kubernetes:         "Delegate": "yes",
yandex.kubernetes:         "DelegateControllers": "cpu cpuacct cpuset io blkio memory devices pids bpf-firewall bpf-devices",
yandex.kubernetes:         "Description": "Docker Application Container Engine",
yandex.kubernetes:         "DevicePolicy": "auto",
yandex.kubernetes:         "Documentation": "https://docs.docker.com",
yandex.kubernetes:         "DynamicUser": "no",
yandex.kubernetes:         "EffectiveCPUs": "",
yandex.kubernetes:         "EffectiveMemoryNodes": "",
yandex.kubernetes:         "ExecMainCode": "0",
yandex.kubernetes:         "ExecMainExitTimestampMonotonic": "0",
yandex.kubernetes:         "ExecMainPID": "617",
yandex.kubernetes:         "ExecMainStartTimestamp": "Wed 2023-10-04 14:05:35 UTC",
yandex.kubernetes:         "ExecMainStartTimestampMonotonic": "13852288",
yandex.kubernetes:         "ExecMainStatus": "0",
yandex.kubernetes:         "ExecReload": "{ path=/bin/kill ; argv[]=/bin/kill -s HUP $MAINPID ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecReloadEx": "{ path=/bin/kill ; argv[]=/bin/kill -s HUP $MAINPID ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecStart": "{ path=/usr/bin/dockerd ; argv[]=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock ; ignore_errors=no ; start_time=[Wed 2023-10-04 14:05:35 UTC] ; stop_time=[n/a] ; pid=617 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "ExecStartEx": "{ path=/usr/bin/dockerd ; argv[]=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock ; flags= ; start_time=[Wed 2023-10-04 14:05:35 UTC] ; stop_time=[n/a] ; pid=617 ; code=(null) ; status=0/0 }",
yandex.kubernetes:         "FailureAction": "none",
yandex.kubernetes:         "FileDescriptorStoreMax": "0",
yandex.kubernetes:         "FinalKillSignal": "9",
yandex.kubernetes:         "FragmentPath": "/lib/systemd/system/docker.service",
yandex.kubernetes:         "GID": "[not set]",
yandex.kubernetes:         "GuessMainPID": "yes",
yandex.kubernetes:         "IOAccounting": "no",
yandex.kubernetes:         "IOReadBytes": "18446744073709551615",
yandex.kubernetes:         "IOReadOperations": "18446744073709551615",
yandex.kubernetes:         "IOSchedulingClass": "0",
yandex.kubernetes:         "IOSchedulingPriority": "0",
yandex.kubernetes:         "IOWeight": "[not set]",
yandex.kubernetes:         "IOWriteBytes": "18446744073709551615",
yandex.kubernetes:         "IOWriteOperations": "18446744073709551615",
yandex.kubernetes:         "IPAccounting": "no",
yandex.kubernetes:         "IPEgressBytes": "[no data]",
yandex.kubernetes:         "IPEgressPackets": "[no data]",
yandex.kubernetes:         "IPIngressBytes": "[no data]",
yandex.kubernetes:         "IPIngressPackets": "[no data]",
yandex.kubernetes:         "Id": "docker.service",
yandex.kubernetes:         "IgnoreOnIsolate": "no",
yandex.kubernetes:         "IgnoreSIGPIPE": "yes",
yandex.kubernetes:         "InactiveEnterTimestampMonotonic": "0",
yandex.kubernetes:         "InactiveExitTimestamp": "Wed 2023-10-04 14:05:35 UTC",
yandex.kubernetes:         "InactiveExitTimestampMonotonic": "13852662",
yandex.kubernetes:         "InvocationID": "4ee7b57fe7f8480f92ac488b88e6dccd",
yandex.kubernetes:         "JobRunningTimeoutUSec": "infinity",
yandex.kubernetes:         "JobTimeoutAction": "none",
yandex.kubernetes:         "JobTimeoutUSec": "infinity",
yandex.kubernetes:         "KeyringMode": "private",
yandex.kubernetes:         "KillMode": "process",
yandex.kubernetes:         "KillSignal": "15",
yandex.kubernetes:         "LimitAS": "infinity",
yandex.kubernetes:         "LimitASSoft": "infinity",
yandex.kubernetes:         "LimitCORE": "infinity",
yandex.kubernetes:         "LimitCORESoft": "infinity",
yandex.kubernetes:         "LimitCPU": "infinity",
yandex.kubernetes:         "LimitCPUSoft": "infinity",
yandex.kubernetes:         "LimitDATA": "infinity",
yandex.kubernetes:         "LimitDATASoft": "infinity",
yandex.kubernetes:         "LimitFSIZE": "infinity",
yandex.kubernetes:         "LimitFSIZESoft": "infinity",
yandex.kubernetes:         "LimitLOCKS": "infinity",
yandex.kubernetes:         "LimitLOCKSSoft": "infinity",
yandex.kubernetes:         "LimitMEMLOCK": "65536",
yandex.kubernetes:         "LimitMEMLOCKSoft": "65536",
yandex.kubernetes:         "LimitMSGQUEUE": "819200",
yandex.kubernetes:         "LimitMSGQUEUESoft": "819200",
yandex.kubernetes:         "LimitNICE": "0",
yandex.kubernetes:         "LimitNICESoft": "0",
yandex.kubernetes:         "LimitNOFILE": "infinity",
yandex.kubernetes:         "LimitNOFILESoft": "infinity",
yandex.kubernetes:         "LimitNPROC": "infinity",
yandex.kubernetes:         "LimitNPROCSoft": "infinity",
yandex.kubernetes:         "LimitRSS": "infinity",
yandex.kubernetes:         "LimitRSSSoft": "infinity",
yandex.kubernetes:         "LimitRTPRIO": "0",
yandex.kubernetes:         "LimitRTPRIOSoft": "0",
yandex.kubernetes:         "LimitRTTIME": "infinity",
yandex.kubernetes:         "LimitRTTIMESoft": "infinity",
yandex.kubernetes:         "LimitSIGPENDING": "15436",
yandex.kubernetes:         "LimitSIGPENDINGSoft": "15436",
yandex.kubernetes:         "LimitSTACK": "infinity",
yandex.kubernetes:         "LimitSTACKSoft": "8388608",
yandex.kubernetes:         "LoadState": "loaded",
yandex.kubernetes:         "LockPersonality": "no",
yandex.kubernetes:         "LogLevelMax": "-1",
yandex.kubernetes:         "LogRateLimitBurst": "0",
yandex.kubernetes:         "LogRateLimitIntervalUSec": "0",
yandex.kubernetes:         "LogsDirectoryMode": "0755",
yandex.kubernetes:         "MainPID": "617",
yandex.kubernetes:         "MemoryAccounting": "yes",
yandex.kubernetes:         "MemoryCurrent": "107352064",
yandex.kubernetes:         "MemoryDenyWriteExecute": "no",
yandex.kubernetes:         "MemoryHigh": "infinity",
yandex.kubernetes:         "MemoryLimit": "infinity",
yandex.kubernetes:         "MemoryLow": "0",
yandex.kubernetes:         "MemoryMax": "infinity",
yandex.kubernetes:         "MemoryMin": "0",
yandex.kubernetes:         "MemorySwapMax": "infinity",
yandex.kubernetes:         "MountAPIVFS": "no",
yandex.kubernetes:         "MountFlags": "",
yandex.kubernetes:         "NFileDescriptorStore": "0",
yandex.kubernetes:         "NRestarts": "0",
yandex.kubernetes:         "NUMAMask": "",
yandex.kubernetes:         "NUMAPolicy": "n/a",
yandex.kubernetes:         "Names": "docker.service",
yandex.kubernetes:         "NeedDaemonReload": "no",
yandex.kubernetes:         "Nice": "0",
yandex.kubernetes:         "NoNewPrivileges": "no",
yandex.kubernetes:         "NonBlocking": "no",
yandex.kubernetes:         "NotifyAccess": "main",
yandex.kubernetes:         "OOMPolicy": "continue",
yandex.kubernetes:         "OOMScoreAdjust": "-500",
yandex.kubernetes:         "OnFailureJobMode": "replace",
yandex.kubernetes:         "Perpetual": "no",
yandex.kubernetes:         "PrivateDevices": "no",
yandex.kubernetes:         "PrivateMounts": "no",
yandex.kubernetes:         "PrivateNetwork": "no",
yandex.kubernetes:         "PrivateTmp": "no",
yandex.kubernetes:         "PrivateUsers": "no",
yandex.kubernetes:         "ProtectControlGroups": "no",
yandex.kubernetes:         "ProtectHome": "no",
yandex.kubernetes:         "ProtectHostname": "no",
yandex.kubernetes:         "ProtectKernelLogs": "no",
yandex.kubernetes:         "ProtectKernelModules": "no",
yandex.kubernetes:         "ProtectKernelTunables": "no",
yandex.kubernetes:         "ProtectSystem": "no",
yandex.kubernetes:         "RefuseManualStart": "no",
yandex.kubernetes:         "RefuseManualStop": "no",
yandex.kubernetes:         "ReloadResult": "success",
yandex.kubernetes:         "RemainAfterExit": "no",
yandex.kubernetes:         "RemoveIPC": "no",
yandex.kubernetes:         "Requires": "sysinit.target docker.socket system.slice",
yandex.kubernetes:         "Restart": "always",
yandex.kubernetes:         "RestartKillSignal": "15",
yandex.kubernetes:         "RestartUSec": "2s",
yandex.kubernetes:         "RestrictNamespaces": "no",
yandex.kubernetes:         "RestrictRealtime": "no",
yandex.kubernetes:         "RestrictSUIDSGID": "no",
yandex.kubernetes:         "Result": "success",
yandex.kubernetes:         "RootDirectoryStartOnly": "no",
yandex.kubernetes:         "RuntimeDirectoryMode": "0755",
yandex.kubernetes:         "RuntimeDirectoryPreserve": "no",
yandex.kubernetes:         "RuntimeMaxUSec": "infinity",
yandex.kubernetes:         "SameProcessGroup": "no",
yandex.kubernetes:         "SecureBits": "0",
yandex.kubernetes:         "SendSIGHUP": "no",
yandex.kubernetes:         "SendSIGKILL": "yes",
yandex.kubernetes:         "Slice": "system.slice",
yandex.kubernetes:         "StandardError": "inherit",
yandex.kubernetes:         "StandardInput": "null",
yandex.kubernetes:         "StandardInputData": "",
yandex.kubernetes:         "StandardOutput": "journal",
yandex.kubernetes:         "StartLimitAction": "none",
yandex.kubernetes:         "StartLimitBurst": "3",
yandex.kubernetes:         "StartLimitIntervalUSec": "1min",
yandex.kubernetes:         "StartupBlockIOWeight": "[not set]",
yandex.kubernetes:         "StartupCPUShares": "[not set]",
yandex.kubernetes:         "StartupCPUWeight": "[not set]",
yandex.kubernetes:         "StartupIOWeight": "[not set]",
yandex.kubernetes:         "StateChangeTimestamp": "Wed 2023-10-04 14:05:39 UTC",
yandex.kubernetes:         "StateChangeTimestampMonotonic": "18535130",
yandex.kubernetes:         "StateDirectoryMode": "0755",
yandex.kubernetes:         "StatusErrno": "0",
yandex.kubernetes:         "StopWhenUnneeded": "no",
yandex.kubernetes:         "SubState": "running",
yandex.kubernetes:         "SuccessAction": "none",
yandex.kubernetes:         "SyslogFacility": "3",
yandex.kubernetes:         "SyslogLevel": "6",
yandex.kubernetes:         "SyslogLevelPrefix": "yes",
yandex.kubernetes:         "SyslogPriority": "30",
yandex.kubernetes:         "SystemCallErrorNumber": "0",
yandex.kubernetes:         "TTYReset": "no",
yandex.kubernetes:         "TTYVHangup": "no",
yandex.kubernetes:         "TTYVTDisallocate": "no",
yandex.kubernetes:         "TasksAccounting": "yes",
yandex.kubernetes:         "TasksCurrent": "10",
yandex.kubernetes:         "TasksMax": "infinity",
yandex.kubernetes:         "TimeoutAbortUSec": "1min 30s",
yandex.kubernetes:         "TimeoutCleanUSec": "infinity",
yandex.kubernetes:         "TimeoutStartUSec": "infinity",
yandex.kubernetes:         "TimeoutStopUSec": "1min 30s",
yandex.kubernetes:         "TimerSlackNSec": "50000",
yandex.kubernetes:         "Transient": "no",
yandex.kubernetes:         "TriggeredBy": "docker.socket",
yandex.kubernetes:         "Type": "notify",
yandex.kubernetes:         "UID": "[not set]",
yandex.kubernetes:         "UMask": "0022",
yandex.kubernetes:         "UnitFilePreset": "enabled",
yandex.kubernetes:         "UnitFileState": "enabled",
yandex.kubernetes:         "UtmpMode": "init",
yandex.kubernetes:         "WantedBy": "multi-user.target",
yandex.kubernetes:         "Wants": "network-online.target containerd.service",
yandex.kubernetes:         "WatchdogSignal": "6",
yandex.kubernetes:         "WatchdogTimestampMonotonic": "0",
yandex.kubernetes:         "WatchdogUSec": "0"
yandex.kubernetes:     }
yandex.kubernetes: }
yandex.kubernetes:
yandex.kubernetes: PLAY RECAP *********************************************************************
yandex.kubernetes: default                    : ok=40   changed=26   unreachable=0    failed=0    skipped=2    rescued=0    ignored=0
yandex.kubernetes:
==> yandex.kubernetes: Stopping instance...
==> yandex.kubernetes: Deleting instance...
yandex.kubernetes: Instance has been deleted!
==> yandex.kubernetes: Creating image: k8s-base-20231004140023
==> yandex.kubernetes: Waiting for image to complete...
==> yandex.kubernetes: Success image create...
==> yandex.kubernetes: Destroying subnet...
yandex.kubernetes: Subnet has been deleted!
==> yandex.kubernetes: Destroying network...
yandex.kubernetes: Network has been deleted!
==> yandex.kubernetes: Destroying boot disk...
yandex.kubernetes: Disk has been deleted!
==> yandex.kubernetes: Running post-processor:  (type shell-local)
==> yandex.kubernetes (shell-local): Running local shell script: /tmp/packer-shell1120675984
==> yandex.kubernetes: Running post-processor:  (type manifest)
==> yandex.kubernetes: Running post-processor:  (type shell-local)
==> yandex.kubernetes (shell-local): Running local shell script: /tmp/packer-shell3738630331
yandex.kubernetes (shell-local): переименован 'manifest.json' -> 'terraform/stage/packer.auto.tfvars.json'
Build 'yandex.kubernetes' finished after 7 minutes 19 seconds.

==> Wait completed after 7 minutes 19 seconds

==> Builds finished. The artifacts of successful builds are:
--> yandex.kubernetes: A disk image was created: k8s-base-20231004140023 (id: fd8vps8tcsm1qcec71f5) with family name k8s-base
```

#### Создание готового кластера *kubernetes* с нуля при использовании *terraform*'а

```bash
$ terraform -chdir=../terraform/stage apply -auto-approve
╷
│ Warning: Provider development overrides are in effect
│
│ The following provider development overrides are set in the CLI configuration:
│  - yandex-cloud/yandex in /home/elnone/.terraform/plugins/yandex-cloud/yandex/0.97.0
│
│ The behavior may therefore not match any released version of the provider and applying changes may cause the state to become incompatible with published releases.
╵
module.kubernetes.data.yandex_compute_image.img: Reading...
module.kubernetes.data.yandex_compute_image.img: Read complete after 0s [id=fd8ecgtorub9r4609man]

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

# null_resource.image_id will be created
+ resource "null_resource" "image_id" {
+ id       = (known after apply)
+ triggers = {
+ "image_value" = "fd85atnjqrc498e0kgd3"
}
}

# null_resource.run_ansible will be created
+ resource "null_resource" "run_ansible" {
+ id       = (known after apply)
+ triggers = {
+ "inventory_file" = "../../ansible/environments/stage/inventory.json"
}
}

# module.kubernetes.yandex_compute_instance.master[0] will be created
+ resource "yandex_compute_instance" "master" {
+ allow_stopping_for_update = true
+ created_at                = (known after apply)
+ folder_id                 = (known after apply)
+ fqdn                      = (known after apply)
+ gpu_cluster_id            = (known after apply)
+ hostname                  = (known after apply)
+ id                        = (known after apply)
+ labels                    = {
+ "tags" = "master"
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
+ name                      = "k8s-master-0"
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
+ image_id    = "fd8ecgtorub9r4609man"
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

# module.kubernetes.yandex_compute_instance.worker[0] will be created
+ resource "yandex_compute_instance" "worker" {
+ allow_stopping_for_update = true
+ created_at                = (known after apply)
+ folder_id                 = (known after apply)
+ fqdn                      = (known after apply)
+ gpu_cluster_id            = (known after apply)
+ hostname                  = (known after apply)
+ id                        = (known after apply)
+ labels                    = {
+ "tags" = "worker"
}
+ metadata                  = {
+ "ssh-keys" = <<-EOT
var.ssh_user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxAzVxg3K3JJ0Tpsw+Qs+N2/IKNR2mfhcUT8Whdpzeby7/BOxS6HmydwD01YxFBJQgXi07Mj7RkplyOIz+wc7sZtPGQ9Ju9/2b9zVbM+T5WAO2hPlv38IeJMKRRG3RttYXeS3OfjfegkvwYorpCP3VgDaDp6xu2GQ3G3mESkh/DNjnH6oaYexSQ+GL9AU7k14vNwjK57su5ARn/dUbJln7F4RdFjL2++tZRGp6RGKEIf4KdZamA5SUsRkqwr6hJWQcpaRKLucBK8RSQGCEODVPZIDZ9/VHU1rJwGeKHuNKeLQjChfj1H4WkIOAS7q+x8rNCa4ZAZL+sL6kTuftNFMp appuser@yc
EOT
}
+ name                      = "k8s-worker-0"
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
+ image_id    = "fd8ecgtorub9r4609man"
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

Plan: 5 to add, 0 to change, 0 to destroy.

Changes to Outputs:
+ kubernetes_image_id          = "fd8ecgtorub9r4609man"
+ kubernetes_master_instance   = [
+ [
+ (known after apply),
],
+ [
+ "k8s-master-0",
],
]
+ kubernetes_master_ip_address = (known after apply)
+ kubernetes_worker_instance   = [
+ [
+ (known after apply),
],
+ [
+ "k8s-worker-0",
],
]
+ kubernetes_worker_ip_address = (known after apply)
null_resource.image_id: Creating...
null_resource.image_id: Creation complete after 0s [id=3058610116059125335]
module.kubernetes.yandex_compute_instance.master[0]: Creating...
module.kubernetes.yandex_compute_instance.worker[0]: Creating...
module.kubernetes.yandex_compute_instance.worker[0]: Still creating... [10s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Still creating... [10s elapsed]
module.kubernetes.yandex_compute_instance.worker[0]: Still creating... [20s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Still creating... [20s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Still creating... [30s elapsed]
module.kubernetes.yandex_compute_instance.worker[0]: Still creating... [30s elapsed]
module.kubernetes.yandex_compute_instance.worker[0]: Still creating... [40s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Still creating... [40s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Still creating... [50s elapsed]
module.kubernetes.yandex_compute_instance.worker[0]: Still creating... [50s elapsed]
module.kubernetes.yandex_compute_instance.worker[0]: Still creating... [1m0s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Still creating... [1m0s elapsed]
module.kubernetes.yandex_compute_instance.worker[0]: Still creating... [1m10s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Still creating... [1m10s elapsed]
module.kubernetes.yandex_compute_instance.master[0]: Creation complete after 1m10s [id=fhm8etrc5c5b4rjtvb2i]
module.kubernetes.yandex_compute_instance.worker[0]: Creation complete after 1m19s [id=fhmfmokv63v2pfcvlj1r]
local_file.ansible_inventory: Creating...
local_file.ansible_inventory: Creation complete after 0s [id=a54ce373a096e721e04115203c125d835fdcb382]
null_resource.run_ansible: Creating...
null_resource.run_ansible: Provisioning with 'local-exec'...
null_resource.run_ansible (local-exec): Executing: ["/bin/sh" "-c" "ansible-playbook -T 300 -i ../../ansible/environments/stage/inventory.json ../../ansible/playbooks/k8s_deploy.yml"]

null_resource.run_ansible (local-exec): PLAY [Install k8s based image] *************************************************

null_resource.run_ansible (local-exec): TASK [docker : Wait for system to become reachable] ****************************
null_resource.run_ansible: Still creating... [10s elapsed]
null_resource.run_ansible: Still creating... [20s elapsed]
null_resource.run_ansible (local-exec): ok: [k8s-master-0]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [docker : Gather facts for the first time] ********************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [docker : fail] ***********************************************************
null_resource.run_ansible (local-exec): skipping: [k8s-master-0]
null_resource.run_ansible (local-exec): skipping: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [docker : Install dependencies] *******************************************
null_resource.run_ansible: Still creating... [30s elapsed]
null_resource.run_ansible: Still creating... [40s elapsed]
null_resource.run_ansible: Still creating... [50s elapsed]
null_resource.run_ansible: Still creating... [1m0s elapsed]
null_resource.run_ansible: Still creating... [1m10s elapsed]
null_resource.run_ansible: Still creating... [1m20s elapsed]
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=apt-transport-https)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=ca-certificates)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=curl)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=wget)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=apt-transport-https)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=gnupg)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=ca-certificates)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=curl)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=wget)
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   net-tools
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=net-tools)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=gnupg)
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   ifupdown
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   bridge-utils
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=bridge-utils)
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   net-tools
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=net-tools)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=vim)
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   ifupdown
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   bridge-utils
null_resource.run_ansible (local-exec): 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=bridge-utils)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=vim)

null_resource.run_ansible (local-exec): TASK [docker : Add GPG key] ****************************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [docker : Add docker repository to apt] ***********************************
null_resource.run_ansible: Still creating... [1m30s elapsed]
null_resource.run_ansible (local-exec): --- before: /dev/null
null_resource.run_ansible (local-exec): +++ after: /etc/apt/sources.list.d/docker.list
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +deb https://download.docker.com/linux/ubuntu focal stable

null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): --- before: /dev/null
null_resource.run_ansible (local-exec): +++ after: /etc/apt/sources.list.d/docker.list
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +deb https://download.docker.com/linux/ubuntu focal stable

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [docker : Install docker] *************************************************
null_resource.run_ansible: Still creating... [1m40s elapsed]
null_resource.run_ansible: Still creating... [1m50s elapsed]
null_resource.run_ansible: Still creating... [2m0s elapsed]
null_resource.run_ansible: Still creating... [2m10s elapsed]
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
null_resource.run_ansible (local-exec): 0 upgraded, 17 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=docker-ce)
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
null_resource.run_ansible (local-exec): 0 upgraded, 17 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=docker-ce)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=docker-ce-cli)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=docker-ce-cli)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=containerd.io)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=containerd.io)

null_resource.run_ansible (local-exec): TASK [docker : Creating a file with content] ***********************************
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-541683h205pxxu/tmpve2b39_j
null_resource.run_ansible (local-exec): @@ -0,0 +1,3 @@
null_resource.run_ansible (local-exec): +{
null_resource.run_ansible (local-exec): +  "exec-opts": ["native.cgroupdriver=systemd"]
null_resource.run_ansible (local-exec): +}

null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after: /home/elnone/.ansible/tmp/ansible-local-541683h205pxxu/tmpu5ouups4
null_resource.run_ansible (local-exec): @@ -0,0 +1,3 @@
null_resource.run_ansible (local-exec): +{
null_resource.run_ansible (local-exec): +  "exec-opts": ["native.cgroupdriver=systemd"]
null_resource.run_ansible (local-exec): +}

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [docker : Check docker is active] *****************************************
null_resource.run_ansible: Still creating... [2m20s elapsed]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]
null_resource.run_ansible (local-exec): ok: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [docker : Ensure group "docker" exists] ***********************************
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]
null_resource.run_ansible (local-exec): ok: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [docker : Adding ubuntu to docker group] **********************************
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [docker : Install docker-compose] *****************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

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

null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
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

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Remove swapfile from /etc/fstab] ****************************
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=swap)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=swap)
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => (item=none)
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item=none)

null_resource.run_ansible (local-exec): TASK [kubernetes : Check swap] *************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Disable swap] ***********************************************
null_resource.run_ansible (local-exec): skipping: [k8s-master-0]
null_resource.run_ansible (local-exec): skipping: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Disable swap in fstab (Kubeadm requirement)] ****************
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]
null_resource.run_ansible (local-exec): ok: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Create an empty file for the Containerd module] *************
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Configure modules for Containerd] ***************************
null_resource.run_ansible (local-exec): --- before: /etc/modules-load.d/containerd.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/modules-load.d/containerd.conf (content)
null_resource.run_ansible (local-exec): @@ -0,0 +1,4 @@
null_resource.run_ansible (local-exec): +# BEGIN ANSIBLE MANAGED BLOCK
null_resource.run_ansible (local-exec): +overlay
null_resource.run_ansible (local-exec): +br_netfilter
null_resource.run_ansible (local-exec): +# END ANSIBLE MANAGED BLOCK

null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): --- before: /etc/modules-load.d/containerd.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/modules-load.d/containerd.conf (content)
null_resource.run_ansible (local-exec): @@ -0,0 +1,4 @@
null_resource.run_ansible (local-exec): +# BEGIN ANSIBLE MANAGED BLOCK
null_resource.run_ansible (local-exec): +overlay
null_resource.run_ansible (local-exec): +br_netfilter
null_resource.run_ansible (local-exec): +# END ANSIBLE MANAGED BLOCK

null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Create an empty file for Kubernetes sysctl params] **********
null_resource.run_ansible: Still creating... [2m30s elapsed]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Configure sysctl params for Kubernetes] *********************
null_resource.run_ansible (local-exec): --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +net.ipv4.ip_forward = 1

null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=net.ipv4.ip_forward = 1)
null_resource.run_ansible (local-exec): --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +net.ipv4.ip_forward = 1

null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=net.ipv4.ip_forward = 1)
null_resource.run_ansible (local-exec): --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): @@ -1 +1,2 @@
null_resource.run_ansible (local-exec):  net.ipv4.ip_forward = 1
null_resource.run_ansible (local-exec): +net.bridge.bridge-nf-call-iptables = 1

null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=net.bridge.bridge-nf-call-iptables = 1)
null_resource.run_ansible (local-exec): --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): @@ -1 +1,2 @@
null_resource.run_ansible (local-exec):  net.ipv4.ip_forward = 1
null_resource.run_ansible (local-exec): +net.bridge.bridge-nf-call-iptables = 1

null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=net.bridge.bridge-nf-call-iptables = 1)
null_resource.run_ansible (local-exec): --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): @@ -1,2 +1,3 @@
null_resource.run_ansible (local-exec):  net.ipv4.ip_forward = 1
null_resource.run_ansible (local-exec):  net.bridge.bridge-nf-call-iptables = 1
null_resource.run_ansible (local-exec): +net.bridge.bridge-nf-call-ip6tables = 1

null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=net.bridge.bridge-nf-call-ip6tables = 1)
null_resource.run_ansible (local-exec): --- before: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/sysctl.d/99-kubernetes-cri.conf (content)
null_resource.run_ansible (local-exec): @@ -1,2 +1,3 @@
null_resource.run_ansible (local-exec):  net.ipv4.ip_forward = 1
null_resource.run_ansible (local-exec):  net.bridge.bridge-nf-call-iptables = 1
null_resource.run_ansible (local-exec): +net.bridge.bridge-nf-call-ip6tables = 1

null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=net.bridge.bridge-nf-call-ip6tables = 1)

null_resource.run_ansible (local-exec): TASK [kubernetes : Load br_netfilter kernel module] ****************************
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]
null_resource.run_ansible (local-exec): ok: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Let iptables see bridged traffic.] **************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=net.ipv4.ip_forward)
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=net.ipv4.ip_forward)
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=net.bridge.bridge-nf-call-iptables)
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=net.bridge.bridge-nf-call-iptables)
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=net.bridge.bridge-nf-call-ip6tables)
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=net.bridge.bridge-nf-call-ip6tables)

null_resource.run_ansible (local-exec): TASK [kubernetes : Verify system variables are set] ****************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : debug] ******************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): net.bridge.bridge-nf-call-iptables = 1
null_resource.run_ansible (local-exec): net.bridge.bridge-nf-call-ip6tables = 1
null_resource.run_ansible (local-exec): net.ipv4.ip_forward = 1
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): net.bridge.bridge-nf-call-iptables = 1
null_resource.run_ansible (local-exec): net.bridge.bridge-nf-call-ip6tables = 1
null_resource.run_ansible (local-exec): net.ipv4.ip_forward = 1

null_resource.run_ansible (local-exec): TASK [kubernetes : Add Kubernetes APT key] *************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Add Kubernetes' APT repository] *****************************
null_resource.run_ansible: Still creating... [2m40s elapsed]
null_resource.run_ansible (local-exec): --- before: /dev/null
null_resource.run_ansible (local-exec): +++ after: /etc/apt/sources.list.d/kubernetes.list
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +deb http://apt.kubernetes.io/ kubernetes-xenial main

null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): --- before: /dev/null
null_resource.run_ansible (local-exec): +++ after: /etc/apt/sources.list.d/kubernetes.list
null_resource.run_ansible (local-exec): @@ -0,0 +1 @@
null_resource.run_ansible (local-exec): +deb http://apt.kubernetes.io/ kubernetes-xenial main

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Configure containerd] ***************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Configure containerd] ***************************************
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Configuring the systemd cgroup driver for containerd] *******
null_resource.run_ansible (local-exec): ok: [k8s-master-0]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Add the systemd cgroup driver for containerd] ***************
null_resource.run_ansible (local-exec): ok: [k8s-master-0]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Show the file content] **************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Enable containerd service, and start it] ********************
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Installing kubernetes] **************************************
null_resource.run_ansible: Still creating... [2m50s elapsed]
null_resource.run_ansible: Still creating... [3m0s elapsed]
null_resource.run_ansible (local-exec): The following additional packages will be installed:
null_resource.run_ansible (local-exec):   conntrack cri-tools ebtables ethtool kubernetes-cni socat
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   nftables
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   conntrack cri-tools ebtables ethtool kubeadm kubectl kubelet kubernetes-cni
null_resource.run_ansible (local-exec):   socat
null_resource.run_ansible (local-exec): 0 upgraded, 9 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): The following additional packages will be installed:
null_resource.run_ansible (local-exec):   conntrack cri-tools ebtables ethtool kubernetes-cni socat
null_resource.run_ansible (local-exec): Suggested packages:
null_resource.run_ansible (local-exec):   nftables
null_resource.run_ansible (local-exec): The following NEW packages will be installed:
null_resource.run_ansible (local-exec):   conntrack cri-tools ebtables ethtool kubeadm kubectl kubelet kubernetes-cni
null_resource.run_ansible (local-exec):   socat
null_resource.run_ansible (local-exec): 0 upgraded, 9 newly installed, 0 to remove and 5 not upgraded.
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Enable service kubelet] *************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Check Kubelet args in Kubelet config] ***********************
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Add runtime args in Kubelet config] *************************
null_resource.run_ansible (local-exec): --- before: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf (content)
null_resource.run_ansible (local-exec): @@ -1,7 +1,8 @@
null_resource.run_ansible (local-exec):  # Note: This dropin only works with kubeadm and kubelet v1.11+
null_resource.run_ansible (local-exec):  [Service]
null_resource.run_ansible (local-exec): +Environment="KUBELET_EXTRA_ARGS= --runtime-cgroups=/system.slice/containerd.service --container-runtime-endpoint=unix:///run/containerd/containerd.sock"
null_resource.run_ansible (local-exec):  Environment="KUBELET_KUBECONFIG_ARGS=--bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf"
null_resource.run_ansible (local-exec):  Environment="KUBELET_CONFIG_ARGS=--config=/var/lib/kubelet/config.yaml"
null_resource.run_ansible (local-exec):  # This is a file that "kubeadm init" and "kubeadm join" generates at runtime, populating the KUBELET_KUBEADM_ARGS variable dynamically
null_resource.run_ansible (local-exec):  EnvironmentFile=-/var/lib/kubelet/kubeadm-flags.env
null_resource.run_ansible (local-exec):  # This is a file that the user can use for overrides of the kubelet args as a last resort. Preferably, the user should use

null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): --- before: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf (content)
null_resource.run_ansible (local-exec): +++ after: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf (content)
null_resource.run_ansible (local-exec): @@ -1,7 +1,8 @@
null_resource.run_ansible (local-exec):  # Note: This dropin only works with kubeadm and kubelet v1.11+
null_resource.run_ansible (local-exec):  [Service]
null_resource.run_ansible (local-exec): +Environment="KUBELET_EXTRA_ARGS= --runtime-cgroups=/system.slice/containerd.service --container-runtime-endpoint=unix:///run/containerd/containerd.sock"
null_resource.run_ansible (local-exec):  Environment="KUBELET_KUBECONFIG_ARGS=--bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf"
null_resource.run_ansible (local-exec):  Environment="KUBELET_CONFIG_ARGS=--config=/var/lib/kubelet/config.yaml"
null_resource.run_ansible (local-exec):  # This is a file that "kubeadm init" and "kubeadm join" generates at runtime, populating the KUBELET_KUBEADM_ARGS variable dynamically
null_resource.run_ansible (local-exec):  EnvironmentFile=-/var/lib/kubelet/kubeadm-flags.env
null_resource.run_ansible (local-exec):  # This is a file that the user can use for overrides of the kubelet args as a last resort. Preferably, the user should use

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : Prevent kubernetes from being upgraded] *********************
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=kubelet)
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=kubelet)
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=kubeadm)
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=kubeadm)
null_resource.run_ansible (local-exec): changed: [k8s-worker-0] => (item=kubectl)
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=kubectl)

null_resource.run_ansible (local-exec): TASK [kubernetes : Reboot all the kubernetes nodes] ****************************
null_resource.run_ansible: Still creating... [3m10s elapsed]
null_resource.run_ansible: Still creating... [3m20s elapsed]
null_resource.run_ansible: Still creating... [3m30s elapsed]
null_resource.run_ansible: Still creating... [3m40s elapsed]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [kubernetes : pause] ******************************************************
null_resource.run_ansible: Still creating... [3m50s elapsed]
null_resource.run_ansible: Still creating... [4m0s elapsed]
null_resource.run_ansible: Still creating... [4m10s elapsed]
null_resource.run_ansible (local-exec): Pausing for 30 seconds
null_resource.run_ansible (local-exec): ok: [k8s-master-0]

null_resource.run_ansible (local-exec): RUNNING HANDLER [docker : Docker Compose Standalone version] *******************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): RUNNING HANDLER [docker : Reload docker service] *******************************
null_resource.run_ansible: Still creating... [4m20s elapsed]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): PLAY [Install K8s master base image] *******************************************

null_resource.run_ansible (local-exec): TASK [Create an empty file for Kubeadm configuring] ****************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [Configuring the container runtime including its cgroup driver] ***********
null_resource.run_ansible (local-exec): --- before: /etc/kubernetes/kubeadm-config.yaml (content)
null_resource.run_ansible (local-exec): +++ after: /etc/kubernetes/kubeadm-config.yaml (content)
null_resource.run_ansible (local-exec): @@ -0,0 +1,19 @@
null_resource.run_ansible (local-exec): +# BEGIN ANSIBLE MANAGED BLOCK
null_resource.run_ansible (local-exec): +kind: ClusterConfiguration
null_resource.run_ansible (local-exec): +apiVersion: kubeadm.k8s.io/v1beta3
null_resource.run_ansible (local-exec): +networking:
null_resource.run_ansible (local-exec): +  podSubnet: "10.244.0.0/16"
null_resource.run_ansible (local-exec): +---
null_resource.run_ansible (local-exec): +kind: KubeletConfiguration
null_resource.run_ansible (local-exec): +apiVersion: kubelet.config.k8s.io/v1beta1
null_resource.run_ansible (local-exec): +runtimeRequestTimeout: "15m"
null_resource.run_ansible (local-exec): +cgroupDriver: "systemd"
null_resource.run_ansible (local-exec): +systemReserved:
null_resource.run_ansible (local-exec): +  cpu: 100m
null_resource.run_ansible (local-exec): +  memory: 350M
null_resource.run_ansible (local-exec): +kubeReserved:
null_resource.run_ansible (local-exec): +  cpu: 100m
null_resource.run_ansible (local-exec): +  memory: 50M
null_resource.run_ansible (local-exec): +enforceNodeAllocatable:
null_resource.run_ansible (local-exec): +  - pods
null_resource.run_ansible (local-exec): +# END ANSIBLE MANAGED BLOCK

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [Initialize the cluster] **************************************************
null_resource.run_ansible: Still creating... [4m30s elapsed]
null_resource.run_ansible: Still creating... [4m40s elapsed]
null_resource.run_ansible: Still creating... [4m50s elapsed]
null_resource.run_ansible: Still creating... [5m0s elapsed]
null_resource.run_ansible: Still creating... [5m10s elapsed]
null_resource.run_ansible: Still creating... [5m20s elapsed]
null_resource.run_ansible: Still creating... [5m30s elapsed]
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [Create .kube directory] **************************************************
null_resource.run_ansible (local-exec): --- before
null_resource.run_ansible (local-exec): +++ after
null_resource.run_ansible (local-exec): @@ -1,6 +1,6 @@
null_resource.run_ansible (local-exec):  {
null_resource.run_ansible (local-exec): -    "group": 0,
null_resource.run_ansible (local-exec): -    "owner": 0,
null_resource.run_ansible (local-exec): +    "group": 1001,
null_resource.run_ansible (local-exec): +    "owner": 1000,
null_resource.run_ansible (local-exec):      "path": "/home/ubuntu/.kube",
null_resource.run_ansible (local-exec): -    "state": "absent"
null_resource.run_ansible (local-exec): +    "state": "directory"
null_resource.run_ansible (local-exec):  }

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [Copy admin.conf to user's kube config] ***********************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [Get the Calico manifest file] ********************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [Modify the file calico.yaml] *********************************************
null_resource.run_ansible (local-exec): --- before: calico.yaml
null_resource.run_ansible (local-exec): +++ after: calico.yaml
null_resource.run_ansible (local-exec): @@ -4795,12 +4795,12 @@
null_resource.run_ansible (local-exec):                    name: calico-config
null_resource.run_ansible (local-exec):                    key: veth_mtu
null_resource.run_ansible (local-exec):              # The default IPv4 pool to create on startup if none exists. Pod IPs will be
null_resource.run_ansible (local-exec):              # chosen from this range. Changing this value after installation will have
null_resource.run_ansible (local-exec):              # no effect. This should fall within `--cluster-cidr`.
null_resource.run_ansible (local-exec): -            # - name: CALICO_IPV4POOL_CIDR
null_resource.run_ansible (local-exec): -            #   value: "192.168.0.0/16"
null_resource.run_ansible (local-exec): +            - name: CALICO_IPV4POOL_CIDR
null_resource.run_ansible (local-exec): +              value: "10.244.0.0/16"
null_resource.run_ansible (local-exec):              # Disable file logging so `kubectl logs` works.
null_resource.run_ansible (local-exec):              - name: CALICO_DISABLE_FILE_LOGGING
null_resource.run_ansible (local-exec):                value: "true"
null_resource.run_ansible (local-exec):              # Set Felix endpoint to host default action to ACCEPT.
null_resource.run_ansible (local-exec):              - name: FELIX_DEFAULTENDPOINTTOHOSTACTION

null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible: Still creating... [5m40s elapsed]


null_resource.run_ansible (local-exec): TASK [Apply Pods plugins] ******************************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml)
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=kubectl apply -f calico.yaml)

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item={'changed': True, 'stdout': '', 'stderr': '', 'rc': 0, 'cmd': 'kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml >> pods_setup.log', 'start': '2023-10-04 13:48:17.538258', 'end': '2023-10-04 13:48:23.166915', 'delta': '0:00:05.628657', 'msg': '', 'invocation': {'module_args': {'chdir': '/home/ubuntu', '_raw_params': 'kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml >> pods_setup.log', '_uses_shell': True, 'stdin_add_newline': True, 'strip_empty_ends': True, 'argv': None, 'executable': None, 'creates': None, 'removes': None, 'stdin': None}}, 'stdout_lines': [], 'stderr_lines': [], 'failed': False, 'item': 'kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml', 'ansible_loop_var': 'item'}) => {}
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item={'changed': True, 'stdout': '', 'stderr': '', 'rc': 0, 'cmd': 'kubectl apply -f calico.yaml >> pods_setup.log', 'start': '2023-10-04 13:48:23.592704', 'end': '2023-10-04 13:48:25.333290', 'delta': '0:00:01.740586', 'msg': '', 'invocation': {'module_args': {'chdir': '/home/ubuntu', '_raw_params': 'kubectl apply -f calico.yaml >> pods_setup.log', '_uses_shell': True, 'stdin_add_newline': True, 'strip_empty_ends': True, 'argv': None, 'executable': None, 'creates': None, 'removes': None, 'stdin': None}}, 'stdout_lines': [], 'stderr_lines': [], 'failed': False, 'item': 'kubectl apply -f calico.yaml', 'ansible_loop_var': 'item'}) => {}

null_resource.run_ansible (local-exec): TASK [Get token] ***************************************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): ['kubeadm join 10.128.0.4:6443 --token 1igokn.n62ysn8bsw54tiu4 --discovery-token-ca-cert-hash sha256:afb4e20484789cb4d66e5fd5df32010b37847ea876d5aae998cfd723bc980296 ']

null_resource.run_ansible (local-exec): TASK [Set join command] ********************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0 -> k8s-worker-0(158.160.99.62)] => (item=k8s-worker-0)

null_resource.run_ansible (local-exec): PLAY [Configure K8s workers base image] ****************************************

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): ['The master host IP is 158.160.126.55', 'kubeadm join 10.128.0.4:6443 --token 1igokn.n62ysn8bsw54tiu4 --discovery-token-ca-cert-hash sha256:afb4e20484789cb4d66e5fd5df32010b37847ea876d5aae998cfd723bc980296 ']

null_resource.run_ansible (local-exec): TASK [TCP port 6443 on master is reachable from worker] ************************
null_resource.run_ansible: Still creating... [5m50s elapsed]
null_resource.run_ansible (local-exec): ok: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [fail] ********************************************************************
null_resource.run_ansible (local-exec): skipping: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [Join cluster] ************************************************************
null_resource.run_ansible: Still creating... [6m0s elapsed]
null_resource.run_ansible (local-exec): changed: [k8s-worker-0]

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-worker-0] => {}

null_resource.run_ansible (local-exec): PLAY [Run checks on k8s] *******************************************************

null_resource.run_ansible (local-exec): TASK [Get nodes] ***************************************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): NAME                   STATUS     ROLES           AGE   VERSION
null_resource.run_ansible (local-exec): fhm8etrc5c5b4rjtvb2i   NotReady   control-plane   33s   v1.28.2
null_resource.run_ansible (local-exec): fhmfmokv63v2pfcvlj1r   NotReady   <none>          2s    v1.28.2


null_resource.run_ansible (local-exec): TASK [Waiting for pods to finish start] ****************************************
null_resource.run_ansible: Still creating... [6m10s elapsed]
null_resource.run_ansible: Still creating... [6m20s elapsed]
null_resource.run_ansible: Still creating... [6m30s elapsed]
null_resource.run_ansible: Still creating... [6m40s elapsed]
null_resource.run_ansible: Still creating... [6m50s elapsed]
null_resource.run_ansible: Still creating... [7m0s elapsed]
null_resource.run_ansible: Still creating... [7m10s elapsed]
null_resource.run_ansible: Still creating... [7m20s elapsed]
null_resource.run_ansible: Still creating... [7m30s elapsed]
null_resource.run_ansible: Still creating... [7m40s elapsed]
null_resource.run_ansible: Still creating... [7m50s elapsed]
null_resource.run_ansible: Still creating... [8m0s elapsed]
null_resource.run_ansible (local-exec): Pausing for 120 seconds
null_resource.run_ansible (local-exec): ok: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [Get pods] ****************************************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0]

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): NAMESPACE      NAME                                           READY   STATUS    RESTARTS   AGE     IP              NODE                   NOMINATED NODE   READINESS GATES
null_resource.run_ansible (local-exec): kube-flannel   kube-flannel-ds-bwngw                          1/1     Running   0          2m18s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-flannel   kube-flannel-ds-mj9ng                          1/1     Running   0          2m3s    10.128.0.9      fhmfmokv63v2pfcvlj1r   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    calico-kube-controllers-7ddc4f45bc-f7dwd       1/1     Running   0          2m18s   10.244.107.65   fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    calico-node-fhpqj                              1/1     Running   0          2m18s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    calico-node-wbshm                              1/1     Running   0          2m3s    10.128.0.9      fhmfmokv63v2pfcvlj1r   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    coredns-5dd5756b68-hhr4q                       1/1     Running   0          2m18s   10.244.107.67   fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    coredns-5dd5756b68-ltnc4                       1/1     Running   0          2m18s   10.244.107.66   fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    etcd-fhm8etrc5c5b4rjtvb2i                      1/1     Running   0          2m31s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    kube-apiserver-fhm8etrc5c5b4rjtvb2i            1/1     Running   0          2m33s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    kube-controller-manager-fhm8etrc5c5b4rjtvb2i   1/1     Running   0          2m31s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    kube-proxy-gjqwx                               1/1     Running   0          2m18s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    kube-proxy-jk6w9                               1/1     Running   0          2m2s    10.128.0.9      fhmfmokv63v2pfcvlj1r   <none>           <none>
null_resource.run_ansible (local-exec): kube-system    kube-scheduler-fhm8etrc5c5b4rjtvb2i            1/1     Running   0          2m31s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>


null_resource.run_ansible (local-exec): TASK [Check cluster] ***********************************************************
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=kubectl config view)
null_resource.run_ansible (local-exec): changed: [k8s-master-0] => (item=kubectl describe node)

null_resource.run_ansible (local-exec): TASK [debug] *******************************************************************
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item={'changed': True, 'stdout': 'apiVersion: v1\nclusters:\n- cluster:\n    certificate-authority-data: DATA+OMITTED\n    server: https://10.128.0.4:6443\n  name: kubernetes\ncontexts:\n- context:\n    cluster: kubernetes\n    user: kubernetes-admin\n  name: kubernetes-admin@kubernetes\ncurrent-context: kubernetes-admin@kubernetes\nkind: Config\npreferences: {}\nusers:\n- name: kubernetes-admin\n  user:\n    client-certificate-data: DATA+OMITTED\n    client-key-data: DATA+OMITTED', 'stderr': '', 'rc': 0, 'cmd': ['kubectl', 'config', 'view'], 'start': '2023-10-04 13:50:45.222919', 'end': '2023-10-04 13:50:45.319780', 'delta': '0:00:00.096861', 'msg': '', 'invocation': {'module_args': {'_raw_params': 'kubectl config view', '_uses_shell': False, 'stdin_add_newline': True, 'strip_empty_ends': True, 'argv': None, 'chdir': None, 'executable': None, 'creates': None, 'removes': None, 'stdin': None}}, 'stdout_lines': ['apiVersion: v1', 'clusters:', '- cluster:', '    certificate-authority-data: DATA+OMITTED', '    server:https://10.128.0.4:6443', '  name: kubernetes', 'contexts:', '- context:', '    cluster: kubernetes', '    user: kubernetes-admin', '  name: kubernetes-admin@kubernetes', 'current-context: kubernetes-admin@kubernetes', 'kind: Config', 'preferences: {}', 'users:', '- name:kubernetes-admin', '  user:', '    client-certificate-data: DATA+OMITTED', '    client-key-data: DATA+OMITTED'], 'stderr_lines': [], 'failed': False, 'item': 'kubectl config view', 'ansible_loop_var': 'item'}) => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): apiVersion: v1
null_resource.run_ansible (local-exec): clusters:
null_resource.run_ansible (local-exec): - cluster:
null_resource.run_ansible (local-exec):     certificate-authority-data: DATA+OMITTED
null_resource.run_ansible (local-exec):     server: https://10.128.0.4:6443
null_resource.run_ansible (local-exec):   name: kubernetes
null_resource.run_ansible (local-exec): contexts:
null_resource.run_ansible (local-exec): - context:
null_resource.run_ansible (local-exec):     cluster: kubernetes
null_resource.run_ansible (local-exec):     user: kubernetes-admin
null_resource.run_ansible (local-exec):   name: kubernetes-admin@kubernetes
null_resource.run_ansible (local-exec): current-context: kubernetes-admin@kubernetes
null_resource.run_ansible (local-exec): kind: Config
null_resource.run_ansible (local-exec): preferences: {}
null_resource.run_ansible (local-exec): users:
null_resource.run_ansible (local-exec): - name: kubernetes-admin
null_resource.run_ansible (local-exec):   user:
null_resource.run_ansible (local-exec):     client-certificate-data: DATA+OMITTED
null_resource.run_ansible (local-exec):     client-key-data: DATA+OMITTED
null_resource.run_ansible (local-exec): ok: [k8s-master-0] => (item={'changed': True, 'stdout': 'Name:               fhm8etrc5c5b4rjtvb2i\nRoles:              control-plane\nLabels:             beta.kubernetes.io/arch=amd64\n                    beta.kubernetes.io/os=linux\n                    kubernetes.io/arch=amd64\n                    kubernetes.io/hostname=fhm8etrc5c5b4rjtvb2i\n                    kubernetes.io/os=linux\n                    node-role.kubernetes.io/control-plane=\n                    node.kubernetes.io/exclude-from-external-load-balancers=\nAnnotations:        flannel.alpha.coreos.com/backend-data: {"VNI":1,"VtepMAC":"06:5d:a9:7d:68:c7"}\n                    flannel.alpha.coreos.com/backend-type: vxlan\n                    flannel.alpha.coreos.com/kube-subnet-manager: true\n              flannel.alpha.coreos.com/public-ip: 10.128.0.4\n                    kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock\n                    node.alpha.kubernetes.io/ttl: 0\n                    projectcalico.org/IPv4Address: 10.128.0.4/24\n                    projectcalico.org/IPv4IPIPTunnelAddr: 10.244.107.64\n                    volumes.kubernetes.io/controller-managed-attach-detach: true\nCreationTimestamp:  Wed, 04 Oct 2023 13:48:10 +0000\nTaints:             node-role.kubernetes.io/control-plane:NoSchedule\nUnschedulable:      false\nLease:\n  HolderIdentity:  fhm8etrc5c5b4rjtvb2i\n  AcquireTime:     <unset>\n  RenewTime:       Wed, 04 Oct 2023 13:50:45 +0000\nConditions:\n  Type                 Status  LastHeartbeatTime                 LastTransitionTime            Reason                       Message\n  ----                 ------  -----------------                 ------------------                ------                       -------\n  NetworkUnavailable   False   Wed, 04 Oct 2023 13:49:03 +0000   Wed, 04 Oct 2023 13:49:03 +0000   CalicoIsUp                   Calico is running on this node\n  MemoryPressure       False   Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available\n  DiskPressure         False   Wed, 04Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure\n  PIDPressure          False   Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available\n  Ready                True    Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:48 +0000   KubeletReady                 kubelet is posting ready status. AppArmor enabled\nAddresses:\n  InternalIP:  10.128.0.4\n  Hostname:    fhm8etrc5c5b4rjtvb2i\nCapacity:\n  cpu:                2\n  ephemeral-storage:  41186748Ki\n  hugepages-1Gi:      0\n  hugepages-2Mi:      0\n  memory:             4014020Ki\n  pods:               110\nAllocatable:\n  cpu:                1800m\n  ephemeral-storage:  37957706894\n  hugepages-1Gi:    0\n  hugepages-2Mi:      0\n  memory:             3520995Ki\n  pods:               110\nSystem Info:\n  Machine ID:                 23000007c6c87776c2b0ab26e7dfac52\n  System UUID:                23000007-c6c8-7776-c2b0-ab26e7dfac52\n  Boot ID:                    7321cb9b-52d3-4485-ba63-036ba61ac80e\n  Kernel Version:             5.4.0-163-generic\n  OS Image:                   Ubuntu 20.04.6 LTS\n  Operating System:           linux\n  Architecture:               amd64\n  Container Runtime Version:  containerd://1.6.24\n  Kubelet Version:v1.28.2\n  Kube-Proxy Version:         v1.28.2\nPodCIDR:                      10.244.0.0/24\nPodCIDRs:                     10.244.0.0/24\nNon-terminated Pods:          (10 in total)\n  Namespace                   Name                                            CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age\n  ---------                   ----                                            ------------  ----------  ---------------  -------------  ---\n  kube-flannel                kube-flannel-ds-bwngw                  100m (5%)     0 (0%)      50Mi (1%)        0 (0%)         2m20s\n  kube-system                 calico-kube-controllers-7ddc4f45bc-f7dwd        0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m20s\n  kube-system                 calico-node-fhpqj         250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m20s\n  kube-system                 coredns-5dd5756b68-hhr4q                        100m (5%)     0 (0%)      70Mi (2%)        170Mi (4%)     2m20s\n  kube-system                 coredns-5dd5756b68-ltnc4                        100m (5%)     0 (0%)      70Mi (2%)        170Mi (4%)     2m20s\n  kube-system                 etcd-fhm8etrc5c5b4rjtvb2i                       100m (5%)     0 (0%)      100Mi (2%)       0 (0%)         2m33s\n  kube-system                 kube-apiserver-fhm8etrc5c5b4rjtvb2i             250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m35s\n  kube-system                 kube-controller-manager-fhm8etrc5c5b4rjtvb2i    200m (11%)    0 (0%)      0 (0%)           0 (0%)         2m33s\n  kube-system    kube-proxy-gjqwx                                0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m20s\n  kube-system                 kube-scheduler-fhm8etrc5c5b4rjtvb2i             100m (5%)     0 (0%)      0 (0%)           0 (0%)         2m33s\nAllocated resources:\n  (Total limits may be over 100 percent, i.e., overcommitted.)\n  Resource           Requests     Limits\n  --------           --------     ------\n  cpu                1200m (66%)  0 (0%)\n  memory             290Mi (8%)   340Mi (9%)\n  ephemeral-storage0 (0%)       0 (0%)\n  hugepages-1Gi      0 (0%)       0 (0%)\n  hugepages-2Mi      0 (0%)       0 (0%)\nEvents:\n  Type     Reason                   Age    From             Message\n  ----     ------                   ----   ----             -------\n  Normal   Starting2m19s  kube-proxy       \n  Normal   Starting                 2m34s  kubelet          Starting kubelet.\n  Warning  InvalidDiskCapacity      2m34s  kubelet          invalid capacity 0 on image filesystem\n  Normal   NodeHasSufficientMemory  2m34s  kubelet Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasSufficientMemory\n  Normal   NodeHasNoDiskPressure    2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasNoDiskPressure\n  Normal   NodeHasSufficientPID     2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasSufficientPID\n  Normal   NodeAllocatableEnforced  2m33s  kubelet          Updated Node Allocatable limit across pods\n  Normal   RegisteredNode           2m21s  node-controller  Node fhm8etrc5c5b4rjtvb2i event: Registered Node fhm8etrc5c5b4rjtvb2i in Controller\n  Normal   NodeReady                118s   kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeReady\n\n\nName:               fhmfmokv63v2pfcvlj1r\nRoles:              <none>\nLabels:             beta.kubernetes.io/arch=amd64\n           beta.kubernetes.io/os=linux\n                    kubernetes.io/arch=amd64\n                    kubernetes.io/hostname=fhmfmokv63v2pfcvlj1r\n                    kubernetes.io/os=linux\nAnnotations:        flannel.alpha.coreos.com/backend-data: {"VNI":1,"VtepMAC":"da:33:12:02:b3:93"}\n                    flannel.alpha.coreos.com/backend-type: vxlan\n                    flannel.alpha.coreos.com/kube-subnet-manager: true\n                    flannel.alpha.coreos.com/public-ip: 10.128.0.9\n                    kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock\n                    node.alpha.kubernetes.io/ttl: 0\n                    projectcalico.org/IPv4Address: 10.128.0.9/24\n                    projectcalico.org/IPv4IPIPTunnelAddr: 10.244.210.64\n                    volumes.kubernetes.io/controller-managed-attach-detach: true\nCreationTimestamp:  Wed, 04 Oct 2023 13:48:41 +0000\nTaints:             <none>\nUnschedulable:      false\nLease:\n  HolderIdentity:  fhmfmokv63v2pfcvlj1r\n  AcquireTime:     <unset>\n  RenewTime:       Wed, 04 Oct2023 13:50:44 +0000\nConditions:\n  Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message\n  ----                 ------  -----------------                 ------------------                ------                       -------\n  NetworkUnavailable   False   Wed, 04 Oct 2023 13:49:53 +0000   Wed, 04 Oct 2023 13:49:53 +0000   CalicoIsUp                   Calico is running on this node\n  MemoryPressure       False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available\n  DiskPressure         False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure\n  PIDPressure          False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available\n  Ready                True    Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:49:22 +0000   KubeletReady                 kubelet is posting ready status. AppArmor enabled\nAddresses:\n  InternalIP:  10.128.0.9\n  Hostname:    fhmfmokv63v2pfcvlj1r\nCapacity:\n  cpu:                2\n  ephemeral-storage:  41186748Ki\n  hugepages-1Gi:      0\n  hugepages-2Mi:      0\n  memory:             4014012Ki\n  pods:               110\nAllocatable:\n  cpu:                1800m\n  ephemeral-storage:  37957706894\n  hugepages-1Gi:      0\n  hugepages-2Mi:      0\n  memory:             3520987Ki\n  pods:               110\nSystem Info:\n  Machine ID:                 23000007c6cfb629f30fe2cbd9facc3b\n  System UUID:                23000007-c6cf-b629-f30f-e2cbd9facc3b\n  Boot ID:                    4020dae8-67e4-41d3-bf52-0b75a6365774\n  Kernel Version:             5.4.0-163-generic\n  OS Image:                   Ubuntu 20.04.6 LTS\n  Operating System:           linux\n  Architecture:               amd64\n  Container Runtime Version:  containerd://1.6.24\n  Kubelet Version:            v1.28.2\n  Kube-Proxy Version:         v1.28.2\nPodCIDR:                      10.244.1.0/24\nPodCIDRs:                     10.244.1.0/24\nNon-terminated Pods:          (3 in total)\n  Namespace                   Name                     CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age\n  ---------                   ----                     ------------  ----------  ---------------  -------------  ---\n  kube-flannel                kube-flannel-ds-mj9ng    100m (5%)     0 (0%)      50Mi (1%)        0 (0%)         2m5s\n  kube-system                 calico-node-wbshm        250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m5s\n  kube-system        kube-proxy-jk6w9         0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m4s\nAllocated resources:\n  (Total limits may be over 100 percent, i.e., overcommitted.)\n  Resource           Requests    Limits\n  --------           --------    ------\n  cpu  350m (19%)  0 (0%)\n  memory             50Mi (1%)   0 (0%)\n  ephemeral-storage  0 (0%)      0 (0%)\n  hugepages-1Gi      0 (0%)      0 (0%)\n  hugepages-2Mi      0 (0%)      0 (0%)\nEvents:\n  Type    Reason                   Age                  From      Message\n  ----    ------                   ----                 ----             -------\n  Normal  Starting                 88s                  kube-proxy       \n  Normal  NodeHasSufficientMemory  2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasSufficientMemory\n  Normal  NodeHasNoDiskPressure    2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasNoDiskPressure\n  Normal  NodeHasSufficientPID     2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasSufficientPID\n  Normal  RegisteredNode           2m1s                 node-controller  Node fhmfmokv63v2pfcvlj1r event: Registered Node fhmfmokv63v2pfcvlj1r in Controller\n  Normal  NodeReady                84s                  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeReady', 'stderr': '', 'rc': 0, 'cmd': ['kubectl', 'describe', 'node'], 'start': '2023-10-04 13:50:45.814096', 'end': '2023-10-04 13:50:46.550043', 'delta': '0:00:00.735947', 'msg': '', 'invocation': {'module_args': {'_raw_params': 'kubectl describe node', '_uses_shell': False, 'stdin_add_newline': True, 'strip_empty_ends': True, 'argv': None, 'chdir': None, 'executable': None, 'creates': None, 'removes': None, 'stdin': None}}, 'stdout_lines': ['Name:               fhm8etrc5c5b4rjtvb2i', 'Roles:     control-plane', 'Labels:             beta.kubernetes.io/arch=amd64', '                    beta.kubernetes.io/os=linux', '                    kubernetes.io/arch=amd64', '                    kubernetes.io/hostname=fhm8etrc5c5b4rjtvb2i', '                    kubernetes.io/os=linux', '                    node-role.kubernetes.io/control-plane=', '                    node.kubernetes.io/exclude-from-external-load-balancers=', 'Annotations:        flannel.alpha.coreos.com/backend-data: {"VNI":1,"VtepMAC":"06:5d:a9:7d:68:c7"}', '           flannel.alpha.coreos.com/backend-type: vxlan', '                    flannel.alpha.coreos.com/kube-subnet-manager: true', '                    flannel.alpha.coreos.com/public-ip: 10.128.0.4', '                    kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock', '                    node.alpha.kubernetes.io/ttl: 0', '                    projectcalico.org/IPv4Address: 10.128.0.4/24', '                    projectcalico.org/IPv4IPIPTunnelAddr: 10.244.107.64', '                    volumes.kubernetes.io/controller-managed-attach-detach: true', 'CreationTimestamp:  Wed, 04 Oct 2023 13:48:10 +0000', 'Taints:             node-role.kubernetes.io/control-plane:NoSchedule', 'Unschedulable:      false', 'Lease:', '  HolderIdentity:  fhm8etrc5c5b4rjtvb2i', '  AcquireTime:     <unset>', '  RenewTime:       Wed, 04 Oct 2023 13:50:45 +0000', 'Conditions:', '  Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message', '  ----                 ------  -----------------        ------------------                ------                       -------', '  NetworkUnavailable   False   Wed, 04 Oct 2023 13:49:03 +0000   Wed, 04 Oct 2023 13:49:03 +0000   CalicoIsUp                   Calico is running on this node', '  MemoryPressure       FalseWed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available', '  DiskPressure         False   Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure', '  PIDPressure          False   Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available', '  Ready                True    Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:48 +0000   KubeletReady                 kubelet is posting ready status. AppArmor enabled', 'Addresses:', '  InternalIP:  10.128.0.4', '  Hostname:    fhm8etrc5c5b4rjtvb2i', 'Capacity:', '  cpu:                2', '  ephemeral-storage:  41186748Ki', '  hugepages-1Gi:      0', '  hugepages-2Mi:      0', '  memory:             4014020Ki', '  pods:               110', 'Allocatable:', '  cpu:                1800m', '  ephemeral-storage:  37957706894', '  hugepages-1Gi:      0', '  hugepages-2Mi:      0', '  memory:             3520995Ki', '  pods:               110', 'System Info:', '  Machine ID:                 23000007c6c87776c2b0ab26e7dfac52', '  System UUID:                23000007-c6c8-7776-c2b0-ab26e7dfac52', '  Boot ID:                    7321cb9b-52d3-4485-ba63-036ba61ac80e', '  Kernel Version:             5.4.0-163-generic', '  OS Image:                   Ubuntu 20.04.6 LTS', '  Operating System:           linux', '  Architecture:               amd64', '  Container Runtime Version:  containerd://1.6.24', '  Kubelet Version:            v1.28.2', '  Kube-Proxy Version:         v1.28.2', 'PodCIDR:                      10.244.0.0/24', 'PodCIDRs:                     10.244.0.0/24', 'Non-terminated Pods:          (10 in total)', '  Namespace                   Name                                            CPU Requests  CPU LimitsMemory Requests  Memory Limits  Age', '  ---------                   ----                                            ------------  ----------  ---------------  -------------  ---', '  kube-flannel                kube-flannel-ds-bwngw                           100m (5%)  0 (0%)      50Mi (1%)        0 (0%)         2m20s', '  kube-system                 calico-kube-controllers-7ddc4f45bc-f7dwd        0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m20s', '  kube-system                 calico-node-fhpqj                         250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m20s', '  kube-system                 coredns-5dd5756b68-hhr4q                        100m (5%)     0 (0%)      70Mi (2%)        170Mi (4%)     2m20s', '  kube-system                 coredns-5dd5756b68-ltnc4 100m (5%)     0 (0%)      70Mi (2%)        170Mi (4%)     2m20s', '  kube-system                 etcd-fhm8etrc5c5b4rjtvb2i                       100m (5%)     0 (0%)      100Mi (2%)       0 (0%)         2m33s', '  kube-system                 kube-apiserver-fhm8etrc5c5b4rjtvb2i             250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m35s', '  kube-system                 kube-controller-manager-fhm8etrc5c5b4rjtvb2i    200m (11%)    0 (0%)      0 (0%)           0 (0%)         2m33s', '  kube-system        kube-proxy-gjqwx                                0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m20s', '  kube-system                 kube-scheduler-fhm8etrc5c5b4rjtvb2i             100m (5%)     0 (0%)      0 (0%)           0 (0%)         2m33s', 'Allocated resources:', '  (Total limits may be over 100 percent, i.e., overcommitted.)', '  Resource           Requests     Limits', '  --------           --------     ------', '  cpu                1200m (66%)  0 (0%)', '  memory             290Mi (8%)   340Mi (9%)', '  ephemeral-storage  0 (0%)       0 (0%)', '  hugepages-1Gi      0 (0%)       0 (0%)', '  hugepages-2Mi      0 (0%)       0 (0%)', 'Events:', '  Type     Reason                   Age    From             Message', '  ----     ------                   ----   ----             -------', '  Normal   Starting                 2m19s  kube-proxy       ', '  Normal   Starting                 2m34s  kubelet          Starting kubelet.', '  Warning  InvalidDiskCapacity      2m34s  kubelet          invalid capacity 0 on image filesystem', '  Normal   NodeHasSufficientMemory  2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasSufficientMemory', '  Normal   NodeHasNoDiskPressure    2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasNoDiskPressure', '  Normal   NodeHasSufficientPID     2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasSufficientPID', '  Normal   NodeAllocatableEnforced  2m33s  kubelet          Updated Node Allocatable limit across pods', '  Normal   RegisteredNode           2m21s  node-controller  Node fhm8etrc5c5b4rjtvb2i event: Registered Node fhm8etrc5c5b4rjtvb2i in Controller', '  Normal   NodeReady                118s   kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeReady', '', '', 'Name:               fhmfmokv63v2pfcvlj1r', 'Roles:              <none>', 'Labels:     beta.kubernetes.io/arch=amd64', '                    beta.kubernetes.io/os=linux', '                    kubernetes.io/arch=amd64', '                    kubernetes.io/hostname=fhmfmokv63v2pfcvlj1r', '                    kubernetes.io/os=linux', 'Annotations:        flannel.alpha.coreos.com/backend-data: {"VNI":1,"VtepMAC":"da:33:12:02:b3:93"}', '                    flannel.alpha.coreos.com/backend-type: vxlan', '                    flannel.alpha.coreos.com/kube-subnet-manager: true', '                    flannel.alpha.coreos.com/public-ip: 10.128.0.9', '                    kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock', '                    node.alpha.kubernetes.io/ttl: 0', '                    projectcalico.org/IPv4Address: 10.128.0.9/24', '                    projectcalico.org/IPv4IPIPTunnelAddr: 10.244.210.64', '                    volumes.kubernetes.io/controller-managed-attach-detach: true', 'CreationTimestamp:  Wed, 04 Oct 2023 13:48:41 +0000', 'Taints:             <none>', 'Unschedulable:      false', 'Lease:', '  HolderIdentity:  fhmfmokv63v2pfcvlj1r', '  AcquireTime:     <unset>', '  RenewTime:       Wed, 04 Oct 2023 13:50:44 +0000', 'Conditions:', '  Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message', '  ----                 ------  -----------------                 ------------------                ------                       -------', '  NetworkUnavailable   False   Wed, 04 Oct 2023 13:49:53 +0000   Wed, 04 Oct 2023 13:49:53 +0000   CalicoIsUp                   Calico is running on this node', '  MemoryPressure       False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available', '  DiskPressure         False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure', '  PIDPressure          False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available', '  Ready                True    Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:49:22 +0000   KubeletReady                 kubelet is posting ready status. AppArmor enabled', 'Addresses:', '  InternalIP:  10.128.0.9', '  Hostname:    fhmfmokv63v2pfcvlj1r', 'Capacity:', '  cpu:               2', '  ephemeral-storage:  41186748Ki', '  hugepages-1Gi:      0', '  hugepages-2Mi:      0', '  memory:             4014012Ki', '  pods:               110', 'Allocatable:', '  cpu:                1800m', '  ephemeral-storage:  37957706894', '  hugepages-1Gi:      0', '  hugepages-2Mi:      0', '  memory:             3520987Ki', '  pods:               110', 'System Info:', '  Machine ID:                 23000007c6cfb629f30fe2cbd9facc3b', '  System UUID:                23000007-c6cf-b629-f30f-e2cbd9facc3b', '  Boot ID:                    4020dae8-67e4-41d3-bf52-0b75a6365774', '  Kernel Version:             5.4.0-163-generic', '  OS Image:                   Ubuntu 20.04.6 LTS', '  Operating System:           linux', '  Architecture:               amd64', '  Container Runtime Version:  containerd://1.6.24', ' Kubelet Version:            v1.28.2', '  Kube-Proxy Version:         v1.28.2', 'PodCIDR:                      10.244.1.0/24', 'PodCIDRs:                     10.244.1.0/24', 'Non-terminated Pods:          (3 in total)', '  Namespace                   Name                  CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age', '  ---------                   ----                     ------------  ----------  ---------------  -------------  ---', '  kube-flannel                kube-flannel-ds-mj9ng    100m (5%)     0 (0%)      50Mi(1%)        0 (0%)         2m5s', '  kube-system                 calico-node-wbshm        250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m5s', '  kube-system                 kube-proxy-jk6w9         0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m4s', 'Allocated resources:', '  (Total limits may be over 100 percent, i.e., overcommitted.)', '  Resource           Requests    Limits', '  --------           --------    ------', '  cpu                350m (19%)  0 (0%)', '  memory             50Mi (1%)   0 (0%)', '  ephemeral-storage  0 (0%)      0 (0%)', '  hugepages-1Gi      0 (0%)      0 (0%)', '  hugepages-2Mi      0 (0%)      0 (0%)', 'Events:', '  Type    Reason                   Age                  From             Message', '  ----    ------                   ----                ----             -------', '  Normal  Starting                 88s                  kube-proxy       ', '  Normal  NodeHasSufficientMemory  2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasSufficientMemory', '  Normal  NodeHasNoDiskPressure    2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasNoDiskPressure', '  Normal  NodeHasSufficientPID     2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasSufficientPID', '  Normal  RegisteredNode           2m1s                 node-controller  Node fhmfmokv63v2pfcvlj1r event: Registered Node fhmfmokv63v2pfcvlj1r in Controller', '  Normal  NodeReady                84s                  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeReady'], 'stderr_lines': [], 'failed': False, 'item': 'kubectl describe node', 'ansible_loop_var': 'item'}) => {}

null_resource.run_ansible (local-exec): MSG:

null_resource.run_ansible (local-exec): Name:               fhm8etrc5c5b4rjtvb2i
null_resource.run_ansible (local-exec): Roles:              control-plane
null_resource.run_ansible (local-exec): Labels:             beta.kubernetes.io/arch=amd64
null_resource.run_ansible (local-exec):                     beta.kubernetes.io/os=linux
null_resource.run_ansible (local-exec):                     kubernetes.io/arch=amd64
null_resource.run_ansible (local-exec):                     kubernetes.io/hostname=fhm8etrc5c5b4rjtvb2i
null_resource.run_ansible (local-exec):                     kubernetes.io/os=linux
null_resource.run_ansible (local-exec):                     node-role.kubernetes.io/control-plane=
null_resource.run_ansible (local-exec):                     node.kubernetes.io/exclude-from-external-load-balancers=
null_resource.run_ansible (local-exec): Annotations:        flannel.alpha.coreos.com/backend-data: {"VNI":1,"VtepMAC":"06:5d:a9:7d:68:c7"}
null_resource.run_ansible (local-exec):                     flannel.alpha.coreos.com/backend-type: vxlan
null_resource.run_ansible (local-exec):                     flannel.alpha.coreos.com/kube-subnet-manager: true
null_resource.run_ansible (local-exec):                     flannel.alpha.coreos.com/public-ip: 10.128.0.4
null_resource.run_ansible (local-exec):                     kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock
null_resource.run_ansible (local-exec):                     node.alpha.kubernetes.io/ttl: 0
null_resource.run_ansible (local-exec):                     projectcalico.org/IPv4Address: 10.128.0.4/24
null_resource.run_ansible (local-exec):                     projectcalico.org/IPv4IPIPTunnelAddr: 10.244.107.64
null_resource.run_ansible (local-exec):                     volumes.kubernetes.io/controller-managed-attach-detach: true
null_resource.run_ansible (local-exec): CreationTimestamp:  Wed, 04 Oct 2023 13:48:10 +0000
null_resource.run_ansible (local-exec): Taints:             node-role.kubernetes.io/control-plane:NoSchedule
null_resource.run_ansible (local-exec): Unschedulable:      false
null_resource.run_ansible (local-exec): Lease:
null_resource.run_ansible (local-exec):   HolderIdentity:  fhm8etrc5c5b4rjtvb2i
null_resource.run_ansible (local-exec):   AcquireTime:     <unset>
null_resource.run_ansible (local-exec):   RenewTime:       Wed, 04 Oct 2023 13:50:45 +0000
null_resource.run_ansible (local-exec): Conditions:
null_resource.run_ansible (local-exec):   Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message
null_resource.run_ansible (local-exec):   ----                 ------  -----------------                 ------------------                ------                       -------
null_resource.run_ansible (local-exec):   NetworkUnavailable   False   Wed, 04 Oct 2023 13:49:03 +0000   Wed, 04 Oct 2023 13:49:03 +0000   CalicoIsUp                   Calico is running on this node
null_resource.run_ansible (local-exec):   MemoryPressure       False   Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available
null_resource.run_ansible (local-exec):   DiskPressure         False   Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure
null_resource.run_ansible (local-exec):   PIDPressure          False   Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:09 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available
null_resource.run_ansible (local-exec):   Ready                True    Wed, 04 Oct 2023 13:49:14 +0000   Wed, 04 Oct 2023 13:48:48 +0000   KubeletReady                 kubelet is posting ready status. AppArmor enabled
null_resource.run_ansible (local-exec): Addresses:
null_resource.run_ansible (local-exec):   InternalIP:  10.128.0.4
null_resource.run_ansible (local-exec):   Hostname:    fhm8etrc5c5b4rjtvb2i
null_resource.run_ansible (local-exec): Capacity:
null_resource.run_ansible (local-exec):   cpu:                2
null_resource.run_ansible (local-exec):   ephemeral-storage:  41186748Ki
null_resource.run_ansible (local-exec):   hugepages-1Gi:      0
null_resource.run_ansible (local-exec):   hugepages-2Mi:      0
null_resource.run_ansible (local-exec):   memory:             4014020Ki
null_resource.run_ansible (local-exec):   pods:               110
null_resource.run_ansible (local-exec): Allocatable:
null_resource.run_ansible (local-exec):   cpu:                1800m
null_resource.run_ansible (local-exec):   ephemeral-storage:  37957706894
null_resource.run_ansible (local-exec):   hugepages-1Gi:      0
null_resource.run_ansible (local-exec):   hugepages-2Mi:      0
null_resource.run_ansible (local-exec):   memory:             3520995Ki
null_resource.run_ansible (local-exec):   pods:               110
null_resource.run_ansible (local-exec): System Info:
null_resource.run_ansible (local-exec):   Machine ID:                 23000007c6c87776c2b0ab26e7dfac52
null_resource.run_ansible (local-exec):   System UUID:                23000007-c6c8-7776-c2b0-ab26e7dfac52
null_resource.run_ansible (local-exec):   Boot ID:                    7321cb9b-52d3-4485-ba63-036ba61ac80e
null_resource.run_ansible (local-exec):   Kernel Version:             5.4.0-163-generic
null_resource.run_ansible (local-exec):   OS Image:                   Ubuntu 20.04.6 LTS
null_resource.run_ansible (local-exec):   Operating System:           linux
null_resource.run_ansible (local-exec):   Architecture:               amd64
null_resource.run_ansible (local-exec):   Container Runtime Version:  containerd://1.6.24
null_resource.run_ansible (local-exec):   Kubelet Version:            v1.28.2
null_resource.run_ansible (local-exec):   Kube-Proxy Version:         v1.28.2
null_resource.run_ansible (local-exec): PodCIDR:                      10.244.0.0/24
null_resource.run_ansible (local-exec): PodCIDRs:                     10.244.0.0/24
null_resource.run_ansible (local-exec): Non-terminated Pods:          (10 in total)
null_resource.run_ansible (local-exec):   Namespace                   Name                                            CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age
null_resource.run_ansible (local-exec):   ---------                   ----                                            ------------  ----------  ---------------  -------------  ---
null_resource.run_ansible (local-exec):   kube-flannel                kube-flannel-ds-bwngw                           100m (5%)     0 (0%)      50Mi (1%)        0 (0%)         2m20s
null_resource.run_ansible (local-exec):   kube-system                 calico-kube-controllers-7ddc4f45bc-f7dwd        0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m20s
null_resource.run_ansible (local-exec):   kube-system                 calico-node-fhpqj                               250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m20s
null_resource.run_ansible (local-exec):   kube-system                 coredns-5dd5756b68-hhr4q                        100m (5%)     0 (0%)      70Mi (2%)        170Mi (4%)     2m20s
null_resource.run_ansible (local-exec):   kube-system                 coredns-5dd5756b68-ltnc4                        100m (5%)     0 (0%)      70Mi (2%)        170Mi (4%)     2m20s
null_resource.run_ansible (local-exec):   kube-system                 etcd-fhm8etrc5c5b4rjtvb2i                       100m (5%)     0 (0%)      100Mi (2%)       0 (0%)         2m33s
null_resource.run_ansible (local-exec):   kube-system                 kube-apiserver-fhm8etrc5c5b4rjtvb2i             250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m35s
null_resource.run_ansible (local-exec):   kube-system                 kube-controller-manager-fhm8etrc5c5b4rjtvb2i    200m (11%)    0 (0%)      0 (0%)           0 (0%)         2m33s
null_resource.run_ansible (local-exec):   kube-system                 kube-proxy-gjqwx                                0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m20s
null_resource.run_ansible (local-exec):   kube-system                 kube-scheduler-fhm8etrc5c5b4rjtvb2i             100m (5%)     0 (0%)      0 (0%)           0 (0%)         2m33s
null_resource.run_ansible (local-exec): Allocated resources:
null_resource.run_ansible (local-exec):   (Total limits may be over 100 percent, i.e., overcommitted.)
null_resource.run_ansible (local-exec):   Resource           Requests     Limits
null_resource.run_ansible (local-exec):   --------           --------     ------
null_resource.run_ansible (local-exec):   cpu                1200m (66%)  0 (0%)
null_resource.run_ansible (local-exec):   memory             290Mi (8%)   340Mi (9%)
null_resource.run_ansible (local-exec):   ephemeral-storage  0 (0%)       0 (0%)
null_resource.run_ansible (local-exec):   hugepages-1Gi      0 (0%)       0 (0%)
null_resource.run_ansible (local-exec):   hugepages-2Mi      0 (0%)       0 (0%)
null_resource.run_ansible (local-exec): Events:
null_resource.run_ansible (local-exec):   Type     Reason                   Age    From             Message
null_resource.run_ansible (local-exec):   ----     ------                   ----   ----             -------
null_resource.run_ansible (local-exec):   Normal   Starting                 2m19s  kube-proxy
null_resource.run_ansible (local-exec):   Normal   Starting                 2m34s  kubelet          Starting kubelet.
null_resource.run_ansible (local-exec):   Warning  InvalidDiskCapacity      2m34s  kubelet          invalid capacity 0 on image filesystem
null_resource.run_ansible (local-exec):   Normal   NodeHasSufficientMemory  2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasSufficientMemory
null_resource.run_ansible (local-exec):   Normal   NodeHasNoDiskPressure    2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasNoDiskPressure
null_resource.run_ansible (local-exec):   Normal   NodeHasSufficientPID     2m34s  kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeHasSufficientPID
null_resource.run_ansible (local-exec):   Normal   NodeAllocatableEnforced  2m33s  kubelet          Updated Node Allocatable limit across pods
null_resource.run_ansible (local-exec):   Normal   RegisteredNode           2m21s  node-controller  Node fhm8etrc5c5b4rjtvb2i event: Registered Node fhm8etrc5c5b4rjtvb2i in Controller
null_resource.run_ansible (local-exec):   Normal   NodeReady                118s   kubelet          Node fhm8etrc5c5b4rjtvb2i status is now: NodeReady


null_resource.run_ansible (local-exec): Name:               fhmfmokv63v2pfcvlj1r
null_resource.run_ansible (local-exec): Roles:              <none>
null_resource.run_ansible (local-exec): Labels:             beta.kubernetes.io/arch=amd64
null_resource.run_ansible (local-exec):                     beta.kubernetes.io/os=linux
null_resource.run_ansible (local-exec):                     kubernetes.io/arch=amd64
null_resource.run_ansible (local-exec):                     kubernetes.io/hostname=fhmfmokv63v2pfcvlj1r
null_resource.run_ansible (local-exec):                     kubernetes.io/os=linux
null_resource.run_ansible (local-exec): Annotations:        flannel.alpha.coreos.com/backend-data: {"VNI":1,"VtepMAC":"da:33:12:02:b3:93"}
null_resource.run_ansible (local-exec):                     flannel.alpha.coreos.com/backend-type: vxlan
null_resource.run_ansible (local-exec):                     flannel.alpha.coreos.com/kube-subnet-manager: true
null_resource.run_ansible (local-exec):                     flannel.alpha.coreos.com/public-ip: 10.128.0.9
null_resource.run_ansible (local-exec):                     kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock
null_resource.run_ansible (local-exec):                     node.alpha.kubernetes.io/ttl: 0
null_resource.run_ansible (local-exec):                     projectcalico.org/IPv4Address: 10.128.0.9/24
null_resource.run_ansible (local-exec):                     projectcalico.org/IPv4IPIPTunnelAddr: 10.244.210.64
null_resource.run_ansible (local-exec):                     volumes.kubernetes.io/controller-managed-attach-detach: true
null_resource.run_ansible (local-exec): CreationTimestamp:  Wed, 04 Oct 2023 13:48:41 +0000
null_resource.run_ansible (local-exec): Taints:             <none>
null_resource.run_ansible (local-exec): Unschedulable:      false
null_resource.run_ansible (local-exec): Lease:
null_resource.run_ansible (local-exec):   HolderIdentity:  fhmfmokv63v2pfcvlj1r
null_resource.run_ansible (local-exec):   AcquireTime:     <unset>
null_resource.run_ansible (local-exec):   RenewTime:       Wed, 04 Oct 2023 13:50:44 +0000
null_resource.run_ansible (local-exec): Conditions:
null_resource.run_ansible (local-exec):   Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message
null_resource.run_ansible (local-exec):   ----                 ------  -----------------                 ------------------                ------                       -------
null_resource.run_ansible (local-exec):   NetworkUnavailable   False   Wed, 04 Oct 2023 13:49:53 +0000   Wed, 04 Oct 2023 13:49:53 +0000   CalicoIsUp                   Calico is running on this node
null_resource.run_ansible (local-exec):   MemoryPressure       False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available
null_resource.run_ansible (local-exec):   DiskPressure         False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure
null_resource.run_ansible (local-exec):   PIDPressure          False   Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:48:41 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available
null_resource.run_ansible (local-exec):   Ready                True    Wed, 04 Oct 2023 13:50:13 +0000   Wed, 04 Oct 2023 13:49:22 +0000   KubeletReady                 kubelet is posting ready status. AppArmor enabled
null_resource.run_ansible (local-exec): Addresses:
null_resource.run_ansible (local-exec):   InternalIP:  10.128.0.9
null_resource.run_ansible (local-exec):   Hostname:    fhmfmokv63v2pfcvlj1r
null_resource.run_ansible (local-exec): Capacity:
null_resource.run_ansible (local-exec):   cpu:                2
null_resource.run_ansible (local-exec):   ephemeral-storage:  41186748Ki
null_resource.run_ansible (local-exec):   hugepages-1Gi:      0
null_resource.run_ansible (local-exec):   hugepages-2Mi:      0
null_resource.run_ansible (local-exec):   memory:             4014012Ki
null_resource.run_ansible (local-exec):   pods:               110
null_resource.run_ansible (local-exec): Allocatable:
null_resource.run_ansible (local-exec):   cpu:                1800m
null_resource.run_ansible (local-exec):   ephemeral-storage:  37957706894
null_resource.run_ansible (local-exec):   hugepages-1Gi:      0
null_resource.run_ansible (local-exec):   hugepages-2Mi:      0
null_resource.run_ansible (local-exec):   memory:             3520987Ki
null_resource.run_ansible (local-exec):   pods:               110
null_resource.run_ansible (local-exec): System Info:
null_resource.run_ansible (local-exec):   Machine ID:                 23000007c6cfb629f30fe2cbd9facc3b
null_resource.run_ansible (local-exec):   System UUID:                23000007-c6cf-b629-f30f-e2cbd9facc3b
null_resource.run_ansible (local-exec):   Boot ID:                    4020dae8-67e4-41d3-bf52-0b75a6365774
null_resource.run_ansible (local-exec):   Kernel Version:             5.4.0-163-generic
null_resource.run_ansible (local-exec):   OS Image:                   Ubuntu 20.04.6 LTS
null_resource.run_ansible (local-exec):   Operating System:           linux
null_resource.run_ansible (local-exec):   Architecture:               amd64
null_resource.run_ansible (local-exec):   Container Runtime Version:  containerd://1.6.24
null_resource.run_ansible (local-exec):   Kubelet Version:            v1.28.2
null_resource.run_ansible (local-exec):   Kube-Proxy Version:         v1.28.2
null_resource.run_ansible (local-exec): PodCIDR:                      10.244.1.0/24
null_resource.run_ansible (local-exec): PodCIDRs:                     10.244.1.0/24
null_resource.run_ansible (local-exec): Non-terminated Pods:          (3 in total)
null_resource.run_ansible (local-exec):   Namespace                   Name                     CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age
null_resource.run_ansible (local-exec):   ---------                   ----                     ------------  ----------  ---------------  -------------  ---
null_resource.run_ansible (local-exec):   kube-flannel                kube-flannel-ds-mj9ng    100m (5%)     0 (0%)      50Mi (1%)        0 (0%)         2m5s
null_resource.run_ansible (local-exec):   kube-system                 calico-node-wbshm        250m (13%)    0 (0%)      0 (0%)           0 (0%)         2m5s
null_resource.run_ansible (local-exec):   kube-system                 kube-proxy-jk6w9         0 (0%)        0 (0%)      0 (0%)           0 (0%)         2m4s
null_resource.run_ansible (local-exec): Allocated resources:
null_resource.run_ansible (local-exec):   (Total limits may be over 100 percent, i.e., overcommitted.)
null_resource.run_ansible (local-exec):   Resource           Requests    Limits
null_resource.run_ansible (local-exec):   --------           --------    ------
null_resource.run_ansible (local-exec):   cpu                350m (19%)  0 (0%)
null_resource.run_ansible (local-exec):   memory             50Mi (1%)   0 (0%)
null_resource.run_ansible (local-exec):   ephemeral-storage  0 (0%)      0 (0%)
null_resource.run_ansible (local-exec):   hugepages-1Gi      0 (0%)      0 (0%)
null_resource.run_ansible (local-exec):   hugepages-2Mi      0 (0%)      0 (0%)
null_resource.run_ansible (local-exec): Events:
null_resource.run_ansible (local-exec):   Type    Reason                   Age                  From             Message
null_resource.run_ansible (local-exec):   ----    ------                   ----                 ----             -------
null_resource.run_ansible (local-exec):   Normal  Starting                 88s                  kube-proxy
null_resource.run_ansible (local-exec):   Normal  NodeHasSufficientMemory  2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasSufficientMemory
null_resource.run_ansible (local-exec):   Normal  NodeHasNoDiskPressure    2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasNoDiskPressure
null_resource.run_ansible (local-exec):   Normal  NodeHasSufficientPID     2m5s (x5 over 2m6s)  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeHasSufficientPID
null_resource.run_ansible (local-exec):   Normal  RegisteredNode           2m1s                 node-controller  Node fhmfmokv63v2pfcvlj1r event: Registered Node fhmfmokv63v2pfcvlj1r in Controller
null_resource.run_ansible (local-exec):   Normal  NodeReady                84s                  kubelet          Node fhmfmokv63v2pfcvlj1r status is now: NodeReady

null_resource.run_ansible (local-exec): PLAY RECAP *********************************************************************
null_resource.run_ansible (local-exec): k8s-master-0               : ok=60   changed=38   unreachable=0    failed=0    skipped=2    rescued=0    ignored=0
null_resource.run_ansible (local-exec): k8s-worker-0               : ok=43   changed=27   unreachable=0    failed=0    skipped=3    rescued=0    ignored=0

null_resource.run_ansible: Creation complete after 8m10s [id=5347774438499733030]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

Outputs:

kubernetes_image_id = "fd8ecgtorub9r4609man"
kubernetes_master_instance = [
[
"fhm8etrc5c5b4rjtvb2i",
],
[
"k8s-master-0",
],
]
kubernetes_master_ip_address = "158.160.126.55"
kubernetes_worker_instance = [
[
"fhmfmokv63v2pfcvlj1r",
],
[
"k8s-worker-0",
],
]
kubernetes_worker_ip_address = "158.160.99.62"
```

#### Вывод готовности кластера *kubernetes*

```bash
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-163-generic x86_64)

* Documentation:  https://help.ubuntu.com
* Management:     https://landscape.canonical.com
* Support:        https://ubuntu.com/advantage
New release '22.04.3 LTS' available.
Run 'do-release-upgrade' to upgrade to it.

Last login: Wed Oct  4 13:50:45 2023 from 79.139.148.255
ubuntu@fhm8etrc5c5b4rjtvb2i:~$ kubectl get nodes
NAME                   STATUS   ROLES           AGE     VERSION
fhm8etrc5c5b4rjtvb2i   Ready    control-plane   4m24s   v1.28.2
fhmfmokv63v2pfcvlj1r   Ready    <none>          3m53s   v1.28.2
```

```bash
ubuntu@fhm8etrc5c5b4rjtvb2i:~$ kubectl get pods -A -o wide
NAMESPACE      NAME                                           READY   STATUS    RESTARTS   AGE     IP              NODE                   NOMINATED NODE   READINESS GATES
kube-flannel   kube-flannel-ds-bwngw                          1/1     Running   0          4m39s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-flannel   kube-flannel-ds-mj9ng                          1/1     Running   0          4m24s   10.128.0.9      fhmfmokv63v2pfcvlj1r   <none>           <none>
kube-system    calico-kube-controllers-7ddc4f45bc-f7dwd       1/1     Running   0          4m39s   10.244.107.65   fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    calico-node-fhpqj                              1/1     Running   0          4m39s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    calico-node-wbshm                              1/1     Running   0          4m24s   10.128.0.9      fhmfmokv63v2pfcvlj1r   <none>           <none>
kube-system    coredns-5dd5756b68-hhr4q                       1/1     Running   0          4m39s   10.244.107.67   fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    coredns-5dd5756b68-ltnc4                       1/1     Running   0          4m39s   10.244.107.66   fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    etcd-fhm8etrc5c5b4rjtvb2i                      1/1     Running   0          4m52s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    kube-apiserver-fhm8etrc5c5b4rjtvb2i            1/1     Running   0          4m54s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    kube-controller-manager-fhm8etrc5c5b4rjtvb2i   1/1     Running   0          4m52s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    kube-proxy-gjqwx                               1/1     Running   0          4m39s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
kube-system    kube-proxy-jk6w9                               1/1     Running   0          4m23s   10.128.0.9      fhmfmokv63v2pfcvlj1r   <none>           <none>
kube-system    kube-scheduler-fhm8etrc5c5b4rjtvb2i            1/1     Running   0          4m52s   10.128.0.4      fhm8etrc5c5b4rjtvb2i   <none>           <none>
```
