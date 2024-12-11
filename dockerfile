FROM php:8.1-apache

# Instalar extensões adicionais do PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilitar módulos do Apache
RUN a2enmod rewrite

COPY . /var/www/html/

WORKDIR /var/www/html
