all : build run

build :
	docker build . -t wordpress

run :
	docker run --env-file /workspaces/inception/project/srcs/.env --name wordpress --link mariadb:mariadb -d -p 9000:9000 wordpress

show :
	docker image ls
	docker ps -a
exec :
	docker exec -it wordpress bash

logs :
	docker logs wordpress

stop :
	docker stop wordpress

clean : stop
	docker rm wordpress
	docker rmi wordpress

re : clean all