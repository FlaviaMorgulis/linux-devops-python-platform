#!/bin/bash
# setup_server.sh - Bootstrap the server

apt update && apt upgrade -y
apt install -y nginx docker.io docker-compose
systemctl enable docker
systemctl start docker
