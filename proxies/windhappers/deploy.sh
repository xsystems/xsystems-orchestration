#!/bin/sh

case "$1" in
    acc|dev|prd) . "./environments/$1.env" ;;
    *) echo "Usage: $0 (acc|dev|prd)"; exit 1 ;;
esac

docker stack rm windhappers-proxy

docker build --tag xsystems/windhappers-proxy:latest .

docker stack deploy --compose-file stack.yml windhappers-proxy
