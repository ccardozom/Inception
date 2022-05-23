FROM debian:buster

RUN apt-get update && apt-get -y install nginx openssl

RUN openssl req -newkey rsa:4096 \
	-x509 -sha256 -days 365 -nodes \
	-out /etc/ssl/certs/inception.crt \
	-keyout /etc/ssl/certs/inception.key \
	-subj "/C=ES/ST=Madrid/L=Madrid/O=42_Madrid/CN=ccardozo.42.fr" 

COPY /conf/sample.conf /etc/nginx/sites-available/default

#RU ln -s /etc/nginx/sites-available/ccardozo.conf /etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]
