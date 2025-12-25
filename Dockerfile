FROM alpine:3.19

RUN apk add --no-cache \
    mysql-client \
    zip \
    rclone \
    bash \
    ca-certificates \
    tzdata

RUN curl https://rclone.org/install.sh | sh

WORKDIR /backup
