#!/bin/bash

service mariadb start

sleep 5


mysql -u root -e "
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON  ${DB_NAME} .* TO '${DB_USER}';
FLUSH PRIVILEGES;
"
service mariadb stop
exec mysqld_safe

