FROM craftcms/nginx:8.0-dev

# Install Plugins
RUN ls
RUN composer require craftcms/commerce \
    && php craft plugin/install commerce

USER www-data
