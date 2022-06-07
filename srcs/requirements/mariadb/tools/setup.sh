#!/bin/bash
service mysql start;
mysql -u root -e "CREATE DATABASE ${DB_NAME};
	CREATE USER '${DB_LOGIN}'@'%' IDENTIFIED BY '${DB_PASS}';
	GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_LOGIN}'@'%';
	ALTER USER '${DB_ROOT_LOGIN}'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}';
	FLUSH PRIVILEGES;"


