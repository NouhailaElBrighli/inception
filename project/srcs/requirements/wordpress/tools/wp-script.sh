cd /var/www/html/wordpress
wp core download --allow-root
mv wp-config-sample.php wp-config.php
exec $@