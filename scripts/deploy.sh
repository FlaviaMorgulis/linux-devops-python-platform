#!/bin/bash
# deploy.sh - Pull the latest Docker image and restart the service

docker-compose pull
docker-compose up -d --remove-orphans
