FROM composer:2.6.5

MAINTAINER Gordon Franke <info@nevalon.de>

RUN apk add libxml2-dev icu-dev

RUN docker-php-ext-install soap

RUN docker-php-ext-configure intl && docker-php-ext-install intl
