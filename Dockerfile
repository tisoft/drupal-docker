FROM drupal:7-apache

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libldap2-dev \
	&& rm -rf /var/lib/apt/lists/* \
  && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
	&& docker-php-ext-install mysqli ldap
