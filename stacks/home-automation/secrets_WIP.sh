#!/bin/sh

docker service update \
     --secret-rm mosquitto-passwd \
     --secret-add source=XXX,target=mosquitto.passwd,mode=0400 \
     mqtt
