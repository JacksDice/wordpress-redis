
FROM wordpress:php8.5

RUN apk add --no-cache --virtual .build-deps \
        $PHPIZE_DEPS \
        linux-headers \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apk del .build-deps

