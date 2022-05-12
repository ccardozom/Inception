FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/setup.sql /var/www/
RUN service mysql start

CMD ["mysqld"]
