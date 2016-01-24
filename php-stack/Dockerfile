FROM php:5.6-cli

# PHP extension
RUN requirements="zlib1g-dev libicu-dev libmcrypt-dev git" \
    && apt-get update && apt-get install -y $requirements && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install intl \
    && docker-php-ext-install zip \
    && docker-php-ext-install opcache \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install bcmath \
    && pecl install apcu-4.0.8 && echo extension=apcu.so > /usr/local/etc/php/conf.d/apcu.ini \
    && apt-get purge --auto-remove -y

# PHP configuration
COPY php.ini /usr/local/etc/php/php.ini

# Install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/bin/composer

