#! /bin/bash

dnf install -y golang gdb tmux openssh-server sudo

ssh-keygen -A

useradd -m -G wheel -U user

mkdir -p /home/user/go

echo "user:password" | chpasswd
echo "root:password" | chpasswd

mkdir -p /var/run/sshd

