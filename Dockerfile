FROM composer:2.6.6

LABEL org.opencontainers.image.authors="Gordon Franke <info@nevalon.de>" \
  org.opencontainers.image.source="https://github.com/gimler/docker-composer"

RUN apk add --no-cache libxml2-dev=2.11.6-r0 icu-dev=73.2-r2 \
  \
  && docker-php-ext-install soap \
  \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl
