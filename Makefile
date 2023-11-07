DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

DOCKER_COMPOSE_PROJECT = inception

.PHONY: build up clean fclean re

build:
	docker-compose -f $(DOCKER_COMPOSE_FILE) -p $(DOCKER_COMPOSE_PROJECT) build

up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) -p $(DOCKER_COMPOSE_PROJECT) up -d

clean:
	docker-compose -f $(DOCKER_COMPOSE_FILE) -p $(DOCKER_COMPOSE_PROJECT) down

fclean: clean
	docker-compose -f $(DOCKER_COMPOSE_FILE) -p $(DOCKER_COMPOSE_PROJECT) rm -f
	docker volume prune -f

prune:
	docker volume prune -f
	docker system prune -af

re: fclean build up
