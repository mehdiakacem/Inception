FROM debian:buster

RUN apt-get update && \
    apt-get install -y php7.3 php7.3-fpm php7.3-curl php7.3-zip php-mysql

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/install_wp.sh /usr/bin/

EXPOSE 9000

RUN mkdir -p /run/php/
RUN chmod +x /usr/bin/install_wp.sh

WORKDIR /var/www/html

ENTRYPOINT ["/usr/bin/install_wp.sh"]

CMD ["php-fpm7.3", "-F"]