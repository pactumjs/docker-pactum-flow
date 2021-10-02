#!/bin/bash

echo "Starting Flow Core Service"
node /pactum/core/src/server.js & 

echo "Starting Flow Captain Service"
node /pactum/captain/src/server.js & 

echo "Starting nginx"
nginx -g 'daemon off;'