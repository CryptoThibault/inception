FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y php7.4 php7.4-fpm php7.4-mysql wget unzip && \
    rm -rf /var/lib/apt/lists/*

COPY tools/setup.sh /setup.sh

RUN chmod +x /setup.sh

EXPOSE 9000

ENTRYPOINT ["php-fpm7.4", "-F", "/setup.sh"]

