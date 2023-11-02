FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server

RUN sed -i 's/bind-address[[:space:]]*=[[:space:]]*127\.0\.0\.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

COPY ./tools/mariadb.sh /usr/bin/
RUN chmod +x /usr/bin/mariadb.sh

ENTRYPOINT ["/usr/bin/mariadb.sh"]

CMD ["mysqld"]
