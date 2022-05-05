COMPOSE = ./srcs/docker-compose.yml

all:
	docker-compose -f $(COMPOSE) up -d

logs:
	docker-compose -f $(COMPOSE) logs

clean:
	docker-compose -f $(COMPOSE) down
	docker system prune -f

re: clean all

.PHONY: all logs clean re
