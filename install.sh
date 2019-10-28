#!/bin/bash
set -e

if ! [ -x "$(command -v ansible)" ]; then
    sudo apt-get update
    sudo apt-get --assume-yes upgrade
    sudo apt-get --assume-yes install ansible
    sudo apt-get --assume-yes install git
fi

ansible-playbook 00-proxmox.yml -i hosts -vvv
