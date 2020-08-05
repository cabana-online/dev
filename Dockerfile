FROM cabanaonline/alpine:1.0

ARG USER=cabana
ENV HOME /home/$USER

USER root

RUN set -xe; \
    \
    apk add --update --no-cache \
        build-base \
        zlib-dev \
        make; \
    rm -rf /var/cache/apk/*

USER cabana

# Entrypoint to keep the container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]