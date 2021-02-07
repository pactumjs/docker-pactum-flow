#!/bin/bash

NETWORK="pactumjs"
SERVICE="pactum"
DB="mongodb"

docker stop $SERVICE $DB

docker network create --driver bridge $NETWORK

docker build -t $SERVICE .

docker run --rm -d --name $SERVICE -p 8080:8080 -e DB_HOST=$DB --network $NETWORK $SERVICE
docker run --rm -d --name $DB -p 27017:27017/tcp --network $NETWORK mongo:4.2.12