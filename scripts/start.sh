#!/bin/bash

# Exit on any error
set -e

echo "Starting n8n service..."

# Check if we have a compose file
if [ ! -f "../compose/docker-compose.yml" ]; then
    echo "Error: docker-compose.yml not found in ../compose/ directory."
    exit 1
fi

# Start only n8n service
podman run -d \
  --name n8n \
  -p 5678:5678 \
  -v "$HOME/kicker/data/n8n:/home/node/.n8n" \
  --env-file "$HOME/kicker/config/n8n/.env" \
  docker.io/n8nio/n8n

# Alternative: If you want to use docker-compose but only for n8n
# podman-compose -f ../compose/docker-compose.yml up -d n8n

# Check the status of the n8n container
podman ps --filter name=n8n

echo "N8n service has been started. Access the web interface at http://localhost:5678"
echo "Use 'podman logs n8n' to see logs."

# Commented out original code for reference
#podman-compose -f ../compose/docker-compose.yml up -d
#podman-compose -f ../compose/docker-compose.yml ps
#echo "All services have been started."