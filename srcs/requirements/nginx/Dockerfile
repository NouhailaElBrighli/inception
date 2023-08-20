FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y
RUN openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -days 365 -subj "/C=US/ST=State/L=City/O=Organization/OU=Department/CN=nel-brig.42.fr"

COPY conf/default /etc/nginx/sites-enabled/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]