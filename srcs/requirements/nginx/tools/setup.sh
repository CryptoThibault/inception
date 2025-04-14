#!/bin/bash

# Création d'un certificat SSL auto-signé
mkdir -p /etc/ssl/private
openssl req -x509 -nodes -days 365 \
  -newkey rsa:2048 \
  -keyout /etc/ssl/private/nginx-selfsigned.key \
  -out /etc/ssl/private/nginx-selfsigned.crt \
  -subj "/C=FR/ST=Paris/L=Paris/O=42/CN=localhost"
