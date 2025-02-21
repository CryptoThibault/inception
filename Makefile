NAME = inception

DC = docker-compose
DC_RUN = $(DC) up -d --build
DC_STOP = $(DC) down
DC_CLEAN = $(DC_STOP) --volumes --remove-orphans

all: up

up:
	$(DC_RUN)

stop:
	$(DC_STOP)

clean:
	$(DC_CLEAN)

re: clean up

.PHONY: all up stop clean re
