#! /usr/bin/bash

USAGE="./cleanup clean_storage_and_packages"

echo $USAGE

if [[ $# -eq 0 ]]
then
  sudo umount /opt/test*
  sudo lvremove /dev/mapper/*test* -y
  # to-do: make emacs automatically go the bottom of the file
  # sudo emacs /etc/fstab
elif [ $1 == 1 ]
then
  sudo umount /opt/test*
  sudo lvremove /dev/mapper/*test* -y
  sudo emacs /etc/fstab
  sudo yum remove lvm2 e2fsprogs xfsprogs parted -y
fi
