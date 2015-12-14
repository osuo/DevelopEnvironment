CREATE DATABASE redmine CHARACTER SET utf8;

CREATE USER 'redmine' IDENTIFIED BY 'redmine';
GRANT ALL ON redmine.* TO 'redmine'@'%' IDENTIFIED BY 'redmine';
GRANT ALL ON redmine.* TO 'redmine'@'localhost' IDENTIFIED BY 'redmine';
FLUSH PRIVILEGES;

