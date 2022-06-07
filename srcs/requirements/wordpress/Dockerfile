FROM debian:buster

RUN apt-get update
RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client wget

WORKDIR /var/www/

RUN wget https://es.wordpress.org/latest-es_ES.tar.gz  && \
	tar -xvzf latest-es_ES.tar.gz && rm -rf latest-es_ES.tar.gz 

RUN mkdir /var/run/php

COPY conf/wp-config.php /var/www/wordpress/
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY tools/wp_start.sh /var/
RUN chmod +x /var/wp_start.sh

RUN chown -R www-data:www-data /var/www/wordpress

EXPOSE 9000

CMD ["/var/./wp_start.sh"]
