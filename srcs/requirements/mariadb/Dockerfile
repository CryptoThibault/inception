FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

COPY tools/setup.sh /setup.sh

COPY tools/init.sql /docker-entrypoint-initdb.d/

RUN chmod +x /setup.sh

EXPOSE 3306

CMD ["/setup.sh"]
