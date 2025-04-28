#!/bin/bash

WORDPRESS_VERSION=6.4.3

set -e

wget https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz -P /tmp
tar -xzf /tmp/wordpress-${WORDPRESS_VERSION}.tar.gz -C /tmp
cp -r /tmp/wordpress/ /var/www/html

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# service php7.4-fpm start

# tail -f /dev/null

execphp-fpm7.4 -F