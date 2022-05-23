COMPOSE = ./srcs/docker-compose.yml

all:
	docker-compose -f $(COMPOSE) up -d

build:
	docker-compose -f $(COMPOSE) up --build

logs:
	docker-compose -f $(COMPOSE) logs

nginxexec:
	docker exec -it nginx /bin/bash

mariadbexec:
	docker exec -it mariadb /bin/bash

wpexec:
	docker exec -it wordpress /bin/bash

rebuild:
	docker-compose -f $(COMPOSE) up --detach --build

clean:
	docker-compose -f $(COMPOSE) down
	docker system prune -fa


fclean: clean
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker network rm inception;\
	docker volume rm $$(docker volume ls -q)

re: clean all

.PHONY: all logs clean re
