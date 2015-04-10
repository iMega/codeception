FROM gliderlabs/alpine:3.1

RUN apk-install \
        php-phar \
        php-zlib \
        php-mysql \
        php-mysqli \
        curl && \
    curl http://codeception.com/codecept.phar -o /usr/local/bin/codecept.phar && \
    chmod +x /usr/local/bin/codecept.phar && \
    ln -s /usr/local/bin/codecept.phar /usr/local/bin/codecept && \
    apk del curl

ENTRYPOINT ["codecept"]