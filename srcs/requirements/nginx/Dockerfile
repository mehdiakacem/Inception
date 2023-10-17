FROM debian:12

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get install openssl

RUN openssl req -x509 -nodes -days 365 \
    -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt

COPY ./conf/my-nginx.conf /etc/nginx/nginx.conf

EXPOSE 433

CMD [ "nginx", "-g", "daemon off;" ]
