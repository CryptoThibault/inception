FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/sites-available/default
COPY tools/setup.sh /setup.sh

RUN chmod +x /setup.sh && /setup.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

