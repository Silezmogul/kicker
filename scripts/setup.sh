#!/bin/bash

# Get the current user's home directory instead of hardcoding
HOME_DIR="$HOME"
CONFIG_DIR="$HOME_DIR/kicker/config"
DATA_DIR="$HOME_DIR/kicker/data"

# Create necessary directories
mkdir -p "$CONFIG_DIR/n8n"
mkdir -p "$CONFIG_DIR/baserow"
mkdir -p "$CONFIG_DIR/postgres"
mkdir -p "$CONFIG_DIR/koboldai"
mkdir -p "$CONFIG_DIR/synapse"
mkdir -p "$DATA_DIR/n8n"
mkdir -p "$DATA_DIR/baserow"

# Pull Docker/Podman images
podman pull docker.io/n8nio/n8n
podman pull docker.io/baserow/baserow
podman pull docker.io/library/postgres:latest
podman pull docker.io/koboldai/koboldai
podman pull docker.io/matrixdotorg/synapse

# Copy example configuration files if they exist
if [ -f "./config/n8n/.env.example" ]; then
  cp "./config/n8n/.env.example" "$CONFIG_DIR/n8n/.env"
fi

if [ -f "./config/baserow/.env.example" ]; then
  cp "./config/baserow/.env.example" "$CONFIG_DIR/baserow/.env"
fi

echo "Setup completed. All necessary directories created and images pulled."