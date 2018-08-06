#! /usr/bin/bash

sudo rpm --import https://packagecloud.io/AtomEditor/atom/gpgkey ;
sudo echo -e "[Atom]\nname=Atom Editor\nbaseurl=https://packagecloud.io/AtomEditor/atom/el/7/\
$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\n\
gpgkey=https://packagecloud.io/AtomEditor/atom/gpgkey" >> /etc/yum.repos.d/atom.repo;

sudo yum install atom -y
