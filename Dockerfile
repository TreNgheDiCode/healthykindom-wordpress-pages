# Dockerfile
FROM wordpress:latest

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli

COPY ./wp-content /var/www/html/wp-content

EXPOSE 3005