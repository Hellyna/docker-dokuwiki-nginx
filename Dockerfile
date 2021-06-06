ARG NGINX_VERSION=stable-alpine
FROM nginx:${NGINX_VERSION}

ARG FREP_VERSION=1.3.12

RUN wget -q https://github.com/subchen/frep/releases/download/v${FREP_VERSION}/frep-${FREP_VERSION}-linux-amd64 -O /usr/bin/frep && \
  chmod 700 /usr/bin/frep

COPY rootfs /

ENTRYPOINT ["/init"]
