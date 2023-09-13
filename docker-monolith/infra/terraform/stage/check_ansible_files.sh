#!/bin/bash

if [ -f "../../ansible/ansible.cfg" ] && [ -f "../../ansible/playbooks/reddit.yml" ]; then
  echo "ansible.cfg and reddit.yml files exist"
else
  echo "ansible.cfg and reddit.yml files do not exist"
fi
