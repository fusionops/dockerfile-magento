FROM php:7.3-cli
RUN apt-get update \
         && apt-get -y upgrade \
         && apt-get -y autoremove
USER 1001
RUN apt-get install -y \
            libfreetype6-dev \
            libjpeg62-turbo-dev \
            libpng-dev \
        && docker-php-ext-configure gd --with-freetype-dir=/usr --with-jpeg-dir=/usr --with-png-dir=/usr \
        && docker-php-ext-install -j$(nproc) gd
RUN apt-get install libxml2-dev -y
RUN apt-get install libxslt-dev -y
RUN apt-get install libzip-dev -y
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install intl
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install soap
RUN docker-php-ext-install xsl
RUN docker-php-ext-install zip
