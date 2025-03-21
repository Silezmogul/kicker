#!/bin/bash

# Exit on any error
set -e

# Check if podman is installed
if ! command -v podman &> /dev/null; then
    echo "Error: podman is not installed. Please install it first."
    exit 1
fi

# Get the current user's home directory instead of hardcoding
HOME_DIR="$HOME"
CONFIG_DIR="$HOME_DIR/kicker/config"
DATA_DIR="$HOME_DIR/kicker/data"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Creating configuration directories..."
# Create necessary directories
mkdir -p "$CONFIG_DIR/n8n"
#mkdir -p "$CONFIG_DIR/postgres"
#mkdir -p "$CONFIG_DIR/koboldai"
#mkdir -p "$CONFIG_DIR/synapse"
#mkdir -p "$CONFIG_DIR/directus"
#mkdir -p "$CONFIG_DIR/baserow"


echo "Creating data directories..."
mkdir -p "$DATA_DIR/n8n"
#mkdir -p "$DATA_DIR/postgres"
#mkdir -p "$DATA_DIR/koboldai"
#mkdir -p "$DATA_DIR/synapse"
#mkdir -p "$DATA_DIR/directus"
#mkdir -p "$DATA_DIR/baserow"


echo "Pulling Docker/Podman images..."
# Pull Docker/Podman images with error handling
for image in "n8nio/n8n"; do
    echo "Pulling $image..."
    if ! podman pull "docker.io/$image"; then
        echo "Warning: Failed to pull $image"
    fi
done

echo "Copying configuration files..."
# Copy example configuration files if they exist
if [ -f "$SCRIPT_DIR/../config/n8n/.env.example" ]; then
  cp "$SCRIPT_DIR/../config/n8n/.env.example" "$CONFIG_DIR/n8n/.env"
  echo "Copied n8n configuration"
else
  echo "Warning: n8n example configuration not found"
fi

#if [ -f "$SCRIPT_DIR/../config/baserow/.env.example" ]; then
#  cp "$SCRIPT_DIR/../config/baserow/.env.example" "$CONFIG_DIR/baserow/.env"
#  echo "Copied baserow configuration"
#else
#  echo "Warning: baserow example configuration not found"
#fi

echo "Setup completed. All necessary directories created and images pulled."