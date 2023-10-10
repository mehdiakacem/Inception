FROM debian:12

RUN apt-get update && \
    apt-get install -y nginx

COPY ./conf/my-nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
