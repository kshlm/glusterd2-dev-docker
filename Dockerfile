FROM kshlm/vagrant-centos:latest

MAINTAINER Kaushal M <kshlmster@gmail.com>

RUN mkdir -p /build
ADD ./setup.sh /build/setup.sh

RUN chmod +x /build/setup.sh
RUN /build/setup.sh

COPY ./bashrc /home/vagrant/.bashrc
