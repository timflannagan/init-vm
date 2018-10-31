#! /usr/bin/bash

USAGE="Enter the package name after the shell executable."
echo $USAGE

sudo yum remove $1 ; clear ; sudo ansible-playbook tests/test.yml ; lsblk -f
