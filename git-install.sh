#! /usr/bin/bash

sudo yum install ansible -y
sudo yum install emacs -y
git clone https://github.com/timflannagan1/linux-storage-role ~/Documents/linux-storage-role/
git config --global user.editor "emacs"
