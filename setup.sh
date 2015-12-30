#! /bin/bash

dnf install -y golang gdb tmux openssh-server sudo
dnf clean all

mkdir -p /home/vagrant/go
chown vagrant: /home/vagrant/go
