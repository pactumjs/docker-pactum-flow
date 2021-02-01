#!/bin/bash

echo "Starting Flow Core Service"
cd /pactum/core/src
node service.js &

cd ../../..

echo "Starting nginx"
nginx -g 'daemon off;'