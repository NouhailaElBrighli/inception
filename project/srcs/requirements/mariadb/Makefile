all : clean build run

build :
	docker build . -t mariadb

run	:
	docker run --env-file /workspaces/inception/project/srcs/.env -dp 3306:3306 --name mariadb mariadb

show :
	docker image ls
	docker ps -a

ip :
	docker inspect -f '{{ .Name }} - {{ .NetworkSettings.IPAddress }}' mariadb

mysql :
	docker exec -it mariadb mysql

bash :
	docker exec -it mariadb bash

logs :
	docker logs mariadb

stop :
	-docker stop mariadb

clean : stop
	-docker rm mariadb
	-docker rmi mariadb