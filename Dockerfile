FROM phpdockerio/php73-fpm:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install php7.3-mysql php-redis php7.3-gd php-imagick php7.3-imap php7.3-intl php-mongodb php7.3-soap php7.3-tidy php7.3-xmlrpc php7.3-xsl php7.3-pgsql php7.3-sqlite php-xdebug \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
