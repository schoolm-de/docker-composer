FROM composer:2.9.2

LABEL org.opencontainers.image.authors="Gordon Franke <info@nevalon.de>" \
  org.opencontainers.image.source="https://github.com/schoolm-de/docker-composer"

RUN apk add --no-cache libxml2-dev=2.13.9-r0 icu-dev=76.1-r1 \
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
