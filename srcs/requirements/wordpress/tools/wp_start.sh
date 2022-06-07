#!/bin/bash

# descargar wp-cli para gestionar wordpress desde línea de comandos
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;

chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp;

cd /var/www/wordpress/

wp core install --allow-root --url=${SERVER_NAME} --title=${WP_TITTLE} --admin_user=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL}; 
wp user create --allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD};

php-fpm7.3 -F;
