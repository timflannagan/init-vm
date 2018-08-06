#! /usr/bin/bash

chmod +x install.sh
sudo yum install ansible -y
git clone https://github.com/timflannagan1/linux-storage-role ~/Documents/linux-storage-role/
git remote add upstream https://github.com/dwlehman/linux-storage-role
