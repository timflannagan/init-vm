#! /usr/bin/bash

# get rid of any mounts first
sudo umount /dev/mapper/*test*

# get rid of any lvs
sudo lvremove /dev/mapper/*test* -y

# TO-DO:
# 1. modify /etc/fstab file
# 2. add umount for /dev/ disk device 
