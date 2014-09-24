#! /bin/bash

yum install -y golang gdb tmux openssh-server sudo supervisor

ssh-keygen -A

useradd -m -G wheel -U user

mkdir -p /home/user/go

echo "user:password" | chpasswd
echo "root:password" | chpasswd

mkdir -p /var/run/sshd /var/log/supervisor

