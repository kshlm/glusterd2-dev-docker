FROM fedora:22

MAINTAINER Kaushal M <kshlmster@gmail.com>

RUN mkdir -p /build
ADD ./setup.sh /build/setup.sh

RUN chmod +x /build/setup.sh
RUN /build/setup.sh

COPY ./bashrc /home/user/.bashrc

CMD /usr/sbin/sshd -D
