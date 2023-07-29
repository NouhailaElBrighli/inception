all : build run

build :
	docker build . -t mariadb

run :
	docker run --name mariadb -d -p 3306:3306 mariadb

show :
	docker image ls
	docker ps -a
exec :
	docker exec -it mariadb bash

logs :
	docker logs mariadb

stop :
	docker stop mariadb

clean : stop
	docker rm mariadb
	docker rmi mariadb

re : clean all