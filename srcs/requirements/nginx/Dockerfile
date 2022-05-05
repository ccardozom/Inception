FROM debian:buster

RUN apt-get update
RUN apt-get -y install nginx \
	systemctl status nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
