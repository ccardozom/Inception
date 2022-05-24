FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/setup.sql /tmp/mariadb/

RUN service mysql start && \
	mysql < /tmp/mariadb/setup.sql && \
	rm /tmp/mariadb/setup.sql

EXPOSE 3306

CMD ["mysqld"]
