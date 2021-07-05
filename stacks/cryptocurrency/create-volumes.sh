#!/bin/sh

# docker volume create \
#     --driver local \
#     --opt type=nfs \
#     --opt o=addr=0.nas.xsystems.org,nfsvers=4 \
#     --opt device=:/cryptocurrency/bitcoin/data \
#     bitcoin-data

docker volume create \
    --driver local \
    --opt type=nfs \
    --opt o=addr=0.nas.xsystems.org,nfsvers=4 \
    --opt device=:/cryptocurrency/blockbook/data \
    blockbook-data

# docker volume create \
#     --driver local \
#     --opt type=nfs \
#     --opt o=addr=0.nas.xsystems.org,nfsvers=4 \
#     --opt device=:/cryptocurrency/electrumx/data \
#     electrumx-data
