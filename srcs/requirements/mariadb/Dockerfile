FROM debian:bullseye

COPY ./tools/script ./script

RUN apt-get update -y
RUN apt install mariadb-server -y 
# RUN apt install mariadb-client -y
RUN chmod +x script

EXPOSE 3306

CMD ["bash" , "script"]