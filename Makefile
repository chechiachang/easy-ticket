SHELL := /bin/bash

install-compose-up:
	sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

up:
	sudo docker-compose up

image:
	sudo docker build -f Dockerfile.quickstart -t "chechiachang/easy-ticket" .

push:
	sudo docker push chechiachang/easy-ticket 
