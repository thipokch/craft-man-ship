FROM craftcms/nginx:8.0-dev

# Install Plugins
composer require craftcms/commerce \
&& php craft plugin/install commerce

USER www-data
