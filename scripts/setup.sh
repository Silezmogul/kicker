#!/bin/bash

# Create necessary directories for the applications
mkdir -p /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/n8n
mkdir -p /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/baserow
mkdir -p /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/postgres
mkdir -p /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/kobold
mkdir -p /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/matrix
mkdir -p /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/volumes

# Pull necessary Podman images
podman pull n8nio/n8n
podman pull baserow/baserow
podman pull postgres:latest
podman pull koboldai/koboldai
podman pull matrixdotorg/synapse

# Create a .env file for n8n from the example
cp /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/n8n/.env.example /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/n8n/.env

# Create a .env file for Baserow from the example
cp /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/baserow/.env.example /home/silezmogul/Documents/Stemadeck-companion/steamdeck-podman-apps/config/baserow/.env

# Notify user of completion
echo "Setup completed. All necessary directories created and images pulled."