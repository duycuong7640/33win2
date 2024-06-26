FROM php:8.1-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    default-mysql-client \
    libjpeg-dev \
    libfreetype6-dev

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath

# Configure GD extension
RUN docker-php-ext-configure gd --with-jpeg --with-freetype \
    && docker-php-ext-install -j$(nproc) gd

# Enable Apache mod_rewrite
#RUN a2enmod rewrite
# Enable Apache modules
RUN a2enmod rewrite \
    && a2enmod proxy \
    && a2enmod proxy_http \
    && a2enmod proxy_balancer \
    && a2enmod lbmethod_byrequests \
    && a2enmod headers \
    && a2enmod ssl

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Enable OPcache
RUN docker-php-ext-enable opcache

# Set working directory
WORKDIR /var/www/html

# Copy application source files
COPY .. /var/www/html

# Copy Apache vhost file
COPY ./docker/php8.1/33winBlog/apache.conf /etc/apache2/sites-available/000-default.conf

# Copy entrypoint script
COPY ./docker/php8.1/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Install Composer dependencies
#RUN composer install --no-interaction --optimize-autoloader --no-dev

# Expose port 80
EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]
CMD ["apache2-foreground"]
