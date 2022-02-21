#!/bin/sh

docker volume create \
    --driver local \
    --opt type=nfs \
    --opt o=addr=0.nas.xsystems.org,nfsvers=4 \
    --opt device=:/home-automation/openhab/addons \
    openhab-addons

docker volume create \
    --driver local \
    --opt type=nfs \
    --opt o=addr=0.nas.xsystems.org,nfsvers=4 \
    --opt device=:/home-automation/openhab/conf \
    openhab-conf

docker volume create \
    --driver local \
    --opt type=nfs \
    --opt o=addr=0.nas.xsystems.org,nfsvers=4 \
    --opt device=:/home-automation/openhab/userdata \
    openhab-userdata
