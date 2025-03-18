#!/bin/bash

# Start all services defined in the docker-compose.yml file
podman-compose -f ../compose/docker-compose.yml up -d

# Check the status of the services
podman-compose -f ../compose/docker-compose.yml ps

echo "All services have been started."