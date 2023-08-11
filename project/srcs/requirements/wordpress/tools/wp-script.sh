cd /var/www/html/wordpress
wp core download --allow-root
wp core config --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_USER_PASSWORD} --dbhost=mariadb --allow-root
exec $@