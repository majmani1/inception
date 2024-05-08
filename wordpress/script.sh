#!/bin/bash
 
sleep 10


chmod -R 777 /var/www/html
wp core download --allow-root
sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = word:9000|' /etc/php/7.4/fpm/pool.d/www.conf
wp config create --dbhost=mariadb --dbname=${DB_NAME}  --dbuser=${DB_USER} --dbpass=${DB_PASS} --allow-root
wp core install --url=${DOMAINE_NAME} --title="WP-CLI" --admin_user=${ADMIN_USER} --admin_password=${ADMIN_PASSWORD} --admin_email=${ADMIN_EMAIL} --allow-root
wp user create ayoub ayoub@wp.com --user_pass=123 --allow-root
exec php-fpm7.4 -F