all : down up

dir :
	-mkdir -p /home/$(USER)/data/mariadb
	-mkdir -p /home/$(USER)/data/wordpress

up : dir
	docker compose -f ./srcs/docker-compose.yml up --build -d

clean:
	docker compose -f ./srcs/docker-compose.yml down --rmi all -v

down:
	docker compose -f ./srcs/docker-compose.yml down

fclean: clean
	docker system prune --all

re: clean up

logs :
	@printf "\033[1;31m" && printf "Nginx logs\n" && printf "\033[0m"
	@docker logs nginx
	@printf "\033[1;31m" && printf "MariaDB logs\n" && printf "\033[0m"
	@docker logs mariadb
	@printf "\033[1;31m" && printf "Wordpress logs\n" && printf "\033[0m"
	@docker logs wordpress

show :
	docker images
	docker ps -a

sh_nginx :
	docker exec -it nginx bash

sh_maridb :
	docker exec -it mariadb bash

sh_wordpress :
	docker exec -it wordpress bash

db :
	docker exec -it mariadb mysql -u root