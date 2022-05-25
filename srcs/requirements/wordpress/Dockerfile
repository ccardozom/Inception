FROM debian:buster

RUN apt-get update
#	apt-get -y install wget php7.3-cgi php7.3-common php7.3-fpm php-pear php7.3-mbstring php7.3-zip php-net-socket php7.3-gd php-xml-util php7.3-gettext php7.3-mysql php7.3-bcmath && \
#	apt-get -y upgrade 
RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client wget

WORKDIR /var/www/

RUN wget https://es.wordpress.org/latest-es_ES.tar.gz  && \
	tar -xvzf latest-es_ES.tar.gz && rm -rf latest-es_ES.tar.gz 
	#rm -rf /var/www/wordpress/wp-config-sample.php

RUN mkdir /var/run/php

COPY conf/wp-config.php /var/www/wordpress/
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY tools/wp_start.sh /var/
RUN chmod +x /var/wp_start.sh

RUN chown -R www-data:www-data /var/www/wordpress

#RUN sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = wordpress:9000|g' /etc/php/7.3/fpm/pool.d/www.conf
#RUN sed -i 's|listen.allowed_clients = 127.0.0.1|listen.allowed_clients = 0.0.0.0|g' /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000

CMD ["/var/./wp_start.sh"]
#CMD ["php-fpm7.3", "-F"]
