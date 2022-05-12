FROM debian:buster

RUN apt-get update && apt-get -y install php php-fpm php-mysql php-cli php-cgi php-zip wget

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf/wp-config.php /var/www/
COPY ./tools/wp_start.sh /var/www/

RUN chmod +x /var/www/wp_start.sh

ENTRYPOINT ["/var/www/wp_start.sh"]

CMD ["/usr/sbin/php-fmp7.3", "--nodaemonize"]
