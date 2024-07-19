FROM php:8.1-fpm

# Installer les dépendances système
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl

# Installer les extensions PHP
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd

# Installer Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configurer le répertoire de travail
WORKDIR /var/www

# Copier le contenu du projet
COPY . .

# Installer les dépendances du projet
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN composer install

# Donner les permissions nécessaires
RUN chown -R www-data:www-data /var/www
RUN chmod -R 755 /var/www

EXPOSE 9000
CMD ["php-fpm"]
