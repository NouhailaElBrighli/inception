#!/bin/sh
service mariadb start
mariadb -u root -e "CREATE DATABASE wpdata; CREATE USER 'wpusr'@'%' IDENTIFIED BY 'wppass'; GRANT ALL PRIVILEGES ON wpdata.* TO 'wpusr'@'%'; FLUSH PRIVILEGES;"
mysqld