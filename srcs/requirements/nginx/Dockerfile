FROM debian:buster

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get install openssl

RUN openssl req -x509 -nodes -days 365 \
    -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=MA/ST=BéniMellal-Khénifra/L=Khouribga/O=1337/OU=1337/CN=makacem.42.fr"

COPY ./conf/my-nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 433

CMD [ "nginx", "-g", "daemon off;" ]
