cd /var/www/html/wordpress
wp core download --allow-root
wp core config --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_USER_PASSWORD} --dbhost=mariadb --allow-root
wp core install --url=${DOMAIN_NAME} --title=DopamInception --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --allow-root
exec "$@"

