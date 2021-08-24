# composer dependencies
FROM composer:2 as vendor
COPY composer.json composer.json
COPY composer.lock composer.lock
RUN composer install --ignore-platform-reqs --no-interaction --prefer-dist

FROM craftcms/nginx:8.0

# Install Plugins
USER root
RUN composer require craftcms/commerce
RUN php craft plugin/install commerce

USER www-data
