#!/bin/bash

# sed -i '/^bind-address/s/^/#/' /etc/mysql/mariadb.conf.d/50-server.cnf
service mariadb start

sleep 5


mysql -u root -e "
CREATE DATABASE IF NOT EXISTS  ${DB_NAME};
CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
"
service mariadb stop
mysqld_safe

