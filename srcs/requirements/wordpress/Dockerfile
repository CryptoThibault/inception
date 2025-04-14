FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y php php-fpm php-mysql wget unzip && \
    rm -rf /var/lib/apt/lists/*

COPY ./tools/setup.sh /setup.sh

RUN chmod +x /setup.sh && /setup.sh

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]

