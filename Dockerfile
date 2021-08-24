FROM craftcms/nginx:8.0

# Install Plugins
USER root
RUN composer require craftcms/commerce
RUN php craft plugin/install commerce

USER www-data
