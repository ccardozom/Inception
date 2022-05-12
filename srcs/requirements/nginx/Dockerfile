FROM debian:buster

RUN apt-get update
RUN apt-get -y install nginx openssl
RUN openssl req -newkey rsa:4096 \
	-x509 -sha256 -days 365 -nodes \
	-out /etc/ssl/certs/inception.crt \
	-keyout /etc/ssl/private/inception.key \
	-subj "/C=ES/ST=Madrid/L=Madrid/O=42_Madrid/CN=ccardozo.42.fr" 

COPY /conf/sample.conf /etc/nginx/sites-enabled/
COPY /index.html /var/www/html/

CMD ["nginx", "-g", "daemon off;"]
