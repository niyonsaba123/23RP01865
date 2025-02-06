# Use an official PHP image as the base
FROM php:8.1-apache

# Copy application files to the web server directory
COPY . /var/www/html

# Set permissions for the copied files
RUN chown -R www-data:www-data /var/www/html

# Install additional PHP extensions if needed (optional)
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80
EXPOSE 80
