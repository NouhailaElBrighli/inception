From debian:bullseye

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y
RUN openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -days 365 -subj "/C=US/ST=State/L=City/O=Organization/OU=Department/CN=nel-brig.42.ma"

COPY conf/nginx.conf /etc/nginx/conf.d/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]