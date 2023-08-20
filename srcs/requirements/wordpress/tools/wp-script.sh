#!/bin/bash

sleep 3

wp core download --allow-root
wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_USER_PASSWORD} --dbhost=mariadb --allow-root
wp core install --url=${DOMAIN_NAME} --title=DopamInception --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --allow-root

wp user create ${WP_USER_2} ${WP_EMAIL_2} --user_pass=${WP_PASSWORD_2} --role=author --allow-root

# chmod 777 -R /var/www/html/wordpress/wp-content

exec /usr/sbin/php-fpm7.4 -F
