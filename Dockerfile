FROM craftcms/nginx:8.0-dev

# Install Plugins
RUN composer create-project craftcms/craft=1.1.4
RUN composer require craftcms/commerce \
    && php craft plugin/install commerce
    
