SHELL := /bin/bash

install-compose-up:
	curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose

up:
	docker-compose up

image:
	docker build -f Dockerfile.quickstart -t "chechiachang/easy-ticket" .

push:
	docker push chechiachang/easy-ticket 
