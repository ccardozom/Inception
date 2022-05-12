COMPOSE = ./srcs/docker-compose.yml

all:
	docker-compose -f $(COMPOSE) up -d

build:
	docker-compose -f $(COMPOSE) up --build

logs:
	docker-compose -f $(COMPOSE) logs

clean:
	docker-compose -f $(COMPOSE) down
	docker system prune -f

fclean: clean
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker network rm inception;\
	docker volume rm $$(docker volume ls -q)

re: clean all

.PHONY: all logs clean re
