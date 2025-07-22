FROM wordpress:latest

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli

COPY ./wp-content /var/www/html/wp-content

# Ensure wp-content and uploads are writable
RUN chown -R www-data:www-data /var/www/html/wp-content \
    && chmod -R 755 /var/www/html/wp-content

# Set higher upload and post size limits for WordPress
RUN echo "upload_max_filesize=256M\npost_max_size=256M" > /usr/local/etc/php/conf.d/uploads.ini
