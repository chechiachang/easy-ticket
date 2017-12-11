SHELL=/bin/bash

build:
	sudo docker build -f Dockerfile.quickstart -t "chechiachang/easy-ticket" .

