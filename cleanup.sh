#! /usr/bin/bash

# ID="rhel" or "fedora"
type_os=$(cat /etc/os-release | grep -w ID)

# need to remove one at a time as some may fail
sudo yum remove lvm2 -y
sudo yum remove parted -y
sudo yum remove xfsprogs -y
sudo yum remove e2fsprogs -y
# Cannot remove util-linux due to systemd
# sudo yum remove util-linux -y
