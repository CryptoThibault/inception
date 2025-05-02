#!/bin/bash

mkdir -p /run/php
chmod 777 /run/php

WORDPRESS_VERSION=6.4.3

wget https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz -P /tmp
tar -xzf /tmp/wordpress-${WORDPRESS_VERSION}.tar.gz -C /tmp
mv /tmp/wordpress/* /var/www/html

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

cat > /var/www/html/wp-config.php << EOF
<?php
define('DB_NAME', '${WORDPRESS_DB_NAME}');
define('DB_USER', '${WORDPRESS_DB_USER}');
define('DB_PASSWORD', '${WORDPRESS_DB_PASSWORD}');
define('DB_HOST', '${WORDPRESS_DB_HOST}');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

\$table_prefix = 'wp_';
define('WP_DEBUG', false);
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');
EOF

sed -i "s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
service mysql restart

exec php-fpm7.4 -F