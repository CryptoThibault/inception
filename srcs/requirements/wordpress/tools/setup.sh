#!/bin/bash
set -e

WORDPRESS_VERSION=6.4.3

wget https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz -P /tmp
tar -xzf /tmp/wordpress-${WORDPRESS_VERSION}.tar.gz -C /tmp
mv /tmp/wordpress/* /var/www/html

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html