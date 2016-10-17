#! /bin/bash

yum install -y gdb tmux openssh-server sudo curl which gcc centos-release-gluster
yum install -y glusterfs-server
yum clean all

mkdir -p /go /usr/local
chown vagrant: /go

curl -o /tmp/golang.tar.gz https://storage.googleapis.com/golang/go1.6.3.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/golang.tar.gz
