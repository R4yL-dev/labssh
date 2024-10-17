FROM debian:12

RUN echo "Installing dependencies" && \
    apt update && \
    apt install -y \
        bash \
        vim \
        curl \
        openssh-server && \
        rm -rf /var/lib/apt/lists/*

COPY confs/sshd_config /etc/ssh/sshd_config
COPY confs/banner /etc/banner
RUN echo "Setting up SSH" && \
    mkdir -p /run/sshd && \
    ssh-keygen -A -f /etc/ssh/ssh_host_rsa_key

RUN echo "Setting up user" && \
    useradd -m -s /bin/bash user && \
    usermod -aG sudo user && \
    echo "user:useruser" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
