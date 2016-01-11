NS = zapster
REPO = rlatex
NAME = rlatex
VOLUMES = -v $(PWD):/data

.PHONY: build shell run start stop rm

build:
	docker build -t $(NS)/$(REPO) .

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO) /bin/bash

run:
	docker run --rm --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO)

stop:
	docker stop $(NAME)

rm:
	docker rm $(NAME)

default: build
