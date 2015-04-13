FROM gliderlabs/alpine:3.1

ADD codecept /codecept
RUN apk-install \
        php-phar \
        php-zlib \
        php-mysql \
        php-mysqli \
        php-json \
        php-ctype

ENTRYPOINT "/codecept"

CMD "--help"