#!/bin/sh

case "$1" in
    acc|dev|prd) 
        . "./environments/passwd-$1.env"
        . "./environments/stack-$1.env"
    ;;
    *) 
        echo "Usage: $0 (acc|dev|prd)" 
        exit 1 
    ;;
esac

docker stack deploy --compose-file stack.yml windhappers
