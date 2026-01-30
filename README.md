# README for DevOps Python Platform

## Overview

This project is a Python API that reads and writes to a database, fully automated on a Linux server, using Bash scripts for operations tasks and CI/CD for deployment.

## Tech Stack

- **Linux (Ubuntu Server)**
- **Bash** (automation & deployment)
- **Python** (Flask or FastAPI)
- **PostgreSQL** (or MySQL)
- **Docker**
- **GitHub Actions**
- **Nginx**
- **Systemd**
- **AWS EC2 (or any VPS)**

## Architecture

```
User
 ↓
Nginx (Linux)
 ↓
Python API (Docker)
 ↓
PostgreSQL
```

## Core Features

- **REST API (CRUD)**
- **/health endpoint**
- **Reads & writes to DB**
- **Uses env vars (12-factor style)**

## Scripts

- `deploy.sh` – pull image & restart service
- `backup_db.sh` – scheduled DB backups
- `health_check.sh` – service monitoring
- `log_rotate.sh` – clean old logs
- `setup_server.sh` – one-command server bootstrap

## CI/CD Pipeline

- Run Python tests
- Lint code
- Build Docker image
- Push image to registry
- SSH into Linux server
- Run Bash deploy script

## Linux System Design

- systemd service for API
- Nginx as reverse proxy
- UFW firewall
- Non-root user
- SSH key auth only
