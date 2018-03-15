FROM drupal:7-apache

# install the PHP extensions we need
RUN docker-php-ext-install mysqli 

