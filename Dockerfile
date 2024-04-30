FROM composer:2.7.4

LABEL org.opencontainers.image.authors="Gordon Franke <info@nevalon.de>" \
  org.opencontainers.image.source="https://github.com/schoolm-de/docker-composer"

RUN apk add --no-cache libxml2-dev=2.11.7-r0 icu-dev=74.1-r0 \
  \
  && docker-php-ext-install soap \
  \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl
