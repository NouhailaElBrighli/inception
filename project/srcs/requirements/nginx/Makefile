all : build run

build :
	docker build . -t nginx

run    :
	docker run --name nginx -dp 443:443 nginx

show :
	docker image ls
	docker ps -a
exec :
	docker exec -it nginx bash

stop :
	docker stop nginx

clean : stop
	docker rm nginx
	docker rmi nginx