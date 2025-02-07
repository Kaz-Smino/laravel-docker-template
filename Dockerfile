# Basic image: PHP 8.3.10
FROM php:8.3.10

# Install system dependencies
RUN apt-get update -y && apt-get install -y openssl zip unzip git zsh

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install PostgreSQL extension
RUN apt-get update && apt-get install -y libpq-dev 

# Install Postgresql client
RUN docker-php-ext-install pdo pdo_pgsql

# Check if mbstring extension is installed
RUN php -m | grep mbstring

# Set working directory
WORKDIR /app

# Copy project files to container
COPY . /app

# Install dependencies
RUN composer install

# Set zsh as the default shell
SHELL ["/bin/zsh", "-c"]

# Command to run the application
CMD php artisan serve --host=0.0.0.0 --port=8000

# Expose port 8000
EXPOSE 8000