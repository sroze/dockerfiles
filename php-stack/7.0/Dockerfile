FROM php:7-cli

# PHP extension
RUN requirements="libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libssl-dev zlib1g-dev libicu-dev libmcrypt-dev git" \
    && apt-get update && apt-get install -y $requirements && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo_mysql mbstring intl zip ftp iconv opcache mcrypt bcmath \
    && pecl install apcu-5.1.3 && echo extension=apcu.so > /usr/local/etc/php/conf.d/apcu.ini \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && apt-get purge --auto-remove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# PHP configuration
COPY php.ini /usr/local/etc/php/php.ini

# Install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/bin/composer

