#! /usr/bin/bash

chmod +x install.sh
sudo yum install ansible -y
git clone https://github.com/timflannagan1/linux-storage-role ~/Documents/linux-storage-role/

sudo yum install lvm2 parted xfsprogs e2fsprogs util-linux -y ;
