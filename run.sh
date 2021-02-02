#!/bin/bash

echo "Starting Flow Core Service"
cd /pactum/core/src
node server.js &

cd ../../..

echo "Starting nginx"
nginx -g 'daemon off;'