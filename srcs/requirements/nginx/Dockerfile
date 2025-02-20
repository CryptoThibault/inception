FROM nginx:1.21

# Copier les fichiers dans l’image Docker
COPY nginx.conf /etc/nginx/nginx.conf
COPY server.crt /etc/nginx/server.crt
COPY server.key /etc/nginx/server.key

# Exposer HTTPS
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
