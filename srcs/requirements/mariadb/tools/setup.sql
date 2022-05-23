CREATE DATABASE wordpress;
CREATE USER 'carlos'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON wordpress.* TO 'carlos'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor';

