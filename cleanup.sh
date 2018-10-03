#! /usr/bin/bash

# get rid of any mounts first
sudo umount /opt/test*

# get rid of any lvs
sudo lvremove /dev/mapper/*test* -y

# this is an awful idea
cp -f /etc/fstab fstab.txt

# TO-DO:
# 1. modify /etc/fstab file
# 2. add umount for /dev/ disk device
