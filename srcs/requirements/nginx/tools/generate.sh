#!/bin/bash

echo "Génération du certificat SSL..."
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout server.key \
    -out server.crt \
    -subj "/CN=localhost"

echo "Certificat généré : server.crt et server.key"
