#!/bin/bash
 
  chmod -R 777 /var/www/html
wp core download --allow-root
sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = word:9000|' /etc/php/7.4/fpm/pool.d/www.conf
wp config create --dbhost=mariadb --dbname=majmani42  --dbuser=mouad --dbpass=123 --allow-root
wp core install --url=majmani.42.fr --title="WP-CLI" --admin_user=majmani42 --admin_password=123 --admin_email=info@gmail.com --allow-root

exec php-fpm7.4 -F