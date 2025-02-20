FROM php:fpm-alpine

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copier WordPress dans l’image
COPY wordpress/ /var/www/html/

# Copier la configuration PHP-FPM (facultatif)
COPY conf/php-fpm.conf /usr/local/etc/php-fpm.conf

# Changer les permissions
RUN chown -R www-data:www-data /var/www/html

# Exposer PHP-FPM (écoute sur le port 9000)
EXPOSE 9000

CMD ["php-fpm", "-F"]
