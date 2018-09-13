FROM ubuntu:trusty

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing --auto-remove --no-f \
  bind9 dnsutils \
  && rm -rf /var/lib/apt/lists/*

COPY etc/bind/ /etc/bind/
COPY var/lib/bind/ /var/lib/bind/

EXPOSE 53/udp 53/tcp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf"]
