FROM debian:buster

#RUN apt-get update &&\
#	 apt-get -y install php7.3-fpm php7.3-mysql php7.3-cli php7.3-cgi php7.3-zip wget

#WORKDIR /var/www/html

#RUN wget https://es.wordpress.org/wordpress-5.9.3-es_ES.tar.gz && tar -xzvf wordpress-5.9.3-es_ES.tar.gz && rm wordpress-5.9.3-es_ES.tar.gz

#RUN mv wordpress/* /var/www/html/wordpress
RUN apt-get -y update && \
	apt-get -y install wget php7.3-cgi php7.3-common php7.3-fpm php-pear php7.3-mbstring php7.3-zip php-net-socket php7.3-gd php-xml-util php7.3-gettext php7.3-mysql php7.3-bcmath && \
	apt-get -y upgrade 

RUN wget https://es.wordpress.org/latest-es_ES.tar.gz  && \
	tar -xvzf latest-es_ES.tar.gz

RUN rm -rf latest-es_ES.tar.gz

RUN mkdir /var/run/php

COPY ./conf/wp-config.php /var/www/html/wordpress/

RUN chown -R www-data:www-data /var/www/html/wordpress

#RUN sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = wordpress:9000|g' /etc/php/7.3fmp/pool.d/www.conf
#RUN sed -i 's|listen.allowed_clients = 127.0.0.1|listen.allowed_clients = 0.0.0.0|g' /etc/php/7.3/fpm/pool.d/www.conf


RUN mv wordpress/* var/www/html/wordpress/ 

CMD ["php-fpm7.3", "-F"]
