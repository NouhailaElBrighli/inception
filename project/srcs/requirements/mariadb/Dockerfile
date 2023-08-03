FROM debian:bookworm

COPY ./tools/script.sh ./script.sh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client -y
RUN chmod +x script.sh
EXPOSE 3306

ENTRYPOINT ["sh", "script.sh"]

CMD [ "mysqld" ]