FROM fedora:20

MAINTAINER Kaushal M <kshlmster@gmail.com>

RUN mkdir -p /build
ADD ./setup.sh /build/setup.sh

RUN chmod +x /build/setup.sh
RUN /build/setup.sh

COPY ./sshd.ini /etc/supervisord.d/sshd.ini
COPY ./bashrc /home/user/.bashrc

CMD /usr/bin/supervisord
