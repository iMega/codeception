FROM gliderlabs/alpine:3.1

RUN apk-install \
        php-phar \
        php-zlib \
        php-mysql \
        php-mysqli \
        php-json \
        php-ctype \
        wget && \
    wget --quiet http://codeception.com/codecept.phar && \
    chmod +x codecept.phar && \
    mv codecept.phar /usr/local/bin/codecept && \
    apk del wget

ENTRYPOINT ["codecept"]