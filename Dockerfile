FROM craftcms/nginx:8.0-dev

# Install Plugins
RUN composer create-project craftcms/craft=3.7.10
RUN composer require craftcms/commerce \
    && php craft plugin/install commerce
    
