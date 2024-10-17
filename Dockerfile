FROM debian:12

RUN apt update && apt install -y \
    bash \
    curl \
    rsyslog \
    vim \
    sudo \
    openssh-server \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/init.sh /init.sh
RUN chmod +x /init.sh

RUN useradd -m -s /bin/bash user && echo 'user:useruser' | chpasswd
RUN usermod -aG sudo user

COPY confs/rsyslog.conf /etc/rsyslog.conf

COPY confs/sshd_config /etc/ssh/sshd_config
RUN mkdir -p /run/sshd
RUN ssh-keygen -A -f /etc/ssh/ssh_host_rsa_key

COPY confs/banner /etc/banner

EXPOSE 22

CMD ["/init.sh"]

