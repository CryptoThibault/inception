#!/bin/bash

echo "Téléchargement de WordPress..."
curl -o wordpress.tar.gz https://wordpress.org/latest.tar.gz
tar -xzf wordpress.tar.gz
rm wordpress.tar.gz

echo "WordPress téléchargé et extrait."
