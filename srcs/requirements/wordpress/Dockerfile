FROM debian:buster

RUN apt-get update && \
    apt-get install -y php7.3 php7.3-fpm php7.3-curl php7.3-zip php-mysql

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir -p /run/php/

WORKDIR /var/www/html

RUN apt-get install -y wget && \
    wget https://wordpress.org/latest.tar.gz && \
    tar -xzvf latest.tar.gz --strip-components=1 && \
    chown -R www-data:www-data /var/www/html && \
    rm -f latest.tar.gz

EXPOSE 9000

CMD ["php-fpm7.3", "-F"]