FROM composer:2.11.3

LABEL org.opencontainers.image.authors="Gordon Franke <info@nevalon.de>" \
  org.opencontainers.image.source="https://github.com/schoolm-de/docker-composer"

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/download/2.13.3/install-php-extensions /usr/local/bin/

RUN install-php-extensions igbinary redis soap intl
