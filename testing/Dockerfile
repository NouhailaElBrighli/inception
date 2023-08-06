FROM debian:bookworm

COPY .env /var/www/html/wordpress/.env
COPY script ./script
RUN mkdir -p /run/php
RUN chmod +x script
RUN apt-get update
RUN apt-get install -y php8.2-fpm
RUN apt-get install -y php8.2-mysql
RUN apt-get install -y curl
RUN apt-get install -y mariadb-client
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar 
RUN mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

ENTRYPOINT [ "sh", "script"]

CMD ["php-fpm8.2", "-R", "-F"]