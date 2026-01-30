#!/bin/bash
# backup_db.sh - Backup the PostgreSQL database

pg_dump -U user -h localhost mydatabase > backup_$(date +%Y%m%d).sql
