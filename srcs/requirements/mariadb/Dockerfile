FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server

RUN service mysql start

CMD ["mysqld"]
