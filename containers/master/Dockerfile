FROM ubuntu:20.04

RUN echo "Installing dependancies..." \
    && apt update && apt install -y \
    bash \
    sudo \
    curl \
    git \
    inetutils-ping \
    iproute2 \
    vim \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*


CMD ["bash"]
