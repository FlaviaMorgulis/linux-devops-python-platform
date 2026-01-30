#!/bin/bash
# health_check.sh - Check the health of the API

if curl -s http://localhost:5000/health | grep -q 'healthy'; then
  echo "API is healthy"
else
  echo "API is down"
fi
