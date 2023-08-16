FROM debian:bullseye

COPY tools/wp-script.sh ./wp-script.sh
RUN mkdir -p /run/php
RUN mkdir -p /var/www/html/wordpress
RUN chmod +x wp-script.sh
RUN apt-get update
RUN apt-get install -y php7.4-fpm
RUN apt-get install -y php7.4-mysql
RUN apt-get install -y curl
RUN apt-get install -y mariadb-client
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar 
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
# COPY ./tools/index.php    /var/www/html/wordpress/index.php
EXPOSE 9000

ENTRYPOINT [ "sh", "wp-script.sh"]

CMD ["php-fpm7.4", "-F"]