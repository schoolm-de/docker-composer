FROM composer:2.6.5

LABEL org.opencontainers.image.authors="Gordon Franke <info@nevalon.de>"

RUN apk add --no-cache libxml2-dev icu-dev \
  \
  && docker-php-ext-install soap \
  \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl
