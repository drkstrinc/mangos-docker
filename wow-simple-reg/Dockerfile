FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
    libgmp-dev \
    libxml2-dev \
    libonig-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
	git

RUN ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/local/include/

RUN docker-php-ext-configure gmp
RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install gd gmp pdo pdo_mysql mbstring

RUN echo extension=gmp.so > $PHP_INI_DIR/conf.d/gmp.ini

RUN git clone https://github.com/masterking32/WoWSimpleRegistration.git /var/www/html
RUN mv /var/www/html/application/config/config.php.sample /var/www/html/application/config/config.php

RUN chmod -R a+r /var/www/html/

EXPOSE 80
