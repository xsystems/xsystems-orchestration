#!/bin/sh

docker stack rm xsystems-proxy

docker build --tag xsystems/xsystems-proxy:latest .

docker stack deploy --compose-file stack.yml xsystems-proxy
