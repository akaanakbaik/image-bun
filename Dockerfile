FROM oven/bun:latest

USER root

ENV USER=container \
    HOME=/home/container \
    LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash ca-certificates curl git openssh-client \
        build-essential python3 pkg-config \
        unzip zip xz-utils tini \
    && rm -rf /var/lib/apt/lists/* \
    && (getent group 1000 || groupadd -g 1000 container) \
    && (getent passwd 1000 || useradd -u 1000 -g 1000 -m -s /bin/bash container) \
    && mkdir -p /home/container \
    && chown -R 1000:1000 /home/container

WORKDIR /home/container

COPY entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh

USER 1000:1000

ENTRYPOINT ["/usr/bin/tini", "--", "/bin/bash", "/entrypoint.sh"]
