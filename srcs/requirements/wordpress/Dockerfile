FROM debian:buster

RUN apt-get update && \
    apt-get install -y php7.3 php7.3-fpm

RUN mkdir -p /run/php/

EXPOSE 9000

CMD ["php-fpm7.3", "-F"]