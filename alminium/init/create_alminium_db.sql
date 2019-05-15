CREATE DATABASE alminium DEFAULT CHARACTER SET utf8;

CREATE USER 'alminium' IDENTIFIED BY 'alminium';
GRANT ALL ON alminium.* TO 'alminium'@'%' IDENTIFIED BY 'alminium';
GRANT ALL ON alminium.* TO 'alminium'@'localhost' IDENTIFIED BY 'alminium';
FLUSH PRIVILEGES;
