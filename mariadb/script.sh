#!/bin/bash

sed -i '/^bind-address/s/^/#/' /etc/mysql/mariadb.conf.d/50-server.cnf
service mariadb start

sleep 5


mysql -u root -e "
CREATE DATABASE IF NOT EXISTS  majmani42;
CREATE USER 'mouad'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON majmani42.* TO 'mouad'@'%';
FLUSH PRIVILEGES;
"
service mariadb stop
mysqld_safe

