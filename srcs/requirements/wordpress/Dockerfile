FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y php7.4 php7.4-fpm php7.4-mysql php7.4-cli php7.4-cgi wget unzip && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /etc/php/7.4/fpm/pool.d

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY tools/setup.sh /setup.sh

RUN chmod +x /setup.sh

EXPOSE 9000

ENTRYPOINT ["/setup.sh"]

