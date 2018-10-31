#! /usr/bin/bash

USAGE="Enter the package name after the shell executable."
echo $USAGE

sudo yum remove $1 -y ; clear ; sudo ansible-playbook ~/Documents/storage/tests/test.yml ; lsblk -f
