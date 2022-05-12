CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'carlos'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON wordpress.* TO 'carlos'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor';

