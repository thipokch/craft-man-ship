FROM craftcms/nginx:8.0-dev

# Install Plugins
USER root
RUN ls \
    && apk upgrade --no-cache \
    && composer require craftcms/commerce \
    && php craft plugin/install commerce

USER www-data
