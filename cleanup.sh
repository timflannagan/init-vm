#! /usr/bin/bash

# ID="rhel" or "fedora"
type_os=$(cat /etc/os-release | grep -w ID)

# remove all the installed packages that may have run in the previous playbook
sudo yum remove lvm2 parted xfsprogs e2fsprogs util-linux -y ;
