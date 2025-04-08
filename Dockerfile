FROM composer:2.8.8

LABEL org.opencontainers.image.authors="Gordon Franke <info@nevalon.de>" \
  org.opencontainers.image.source="https://github.com/schoolm-de/docker-composer"

RUN apk add --no-cache libxml2-dev=2.13.4-r5 icu-dev=74.2-r0 \
  \
  && apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
  && pecl install redis \
  && docker-php-ext-enable redis \
  && apk del pcre-dev ${PHPIZE_DEPS} \
  && rm -rf /tmp/pear \
  \
  && docker-php-ext-install soap \
  \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl
