COMPOSE = docker compose
COMPOSE_FILE = srcs/docker-compose.yml
PROJECT_NAME = inception

all: build up

build:
	$(COMPOSE) -p $(PROJECT_NAME) -f $(COMPOSE_FILE) build

up:
	$(COMPOSE) -p $(PROJECT_NAME) -f $(COMPOSE_FILE) up -d

down:
	$(COMPOSE) -p $(PROJECT_NAME) -f $(COMPOSE_FILE) down

fclean:
	$(COMPOSE) -p $(PROJECT_NAME) -f $(COMPOSE_FILE) down -v --rmi all --remove-orphans

re: fclean build up