#!/bin/bash

# Define backup directory
BACKUP_DIR="/path/to/backup/directory"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Backup PostgreSQL database
podman exec -t postgres_container_name pg_dumpall -c -U postgres_user > "$BACKUP_DIR/postgres_backup_$TIMESTAMP.sql"

# Backup n8n data
podman cp n8n_container_name:/data "$BACKUP_DIR/n8n_backup_$TIMESTAMP"

# Backup Baserow data
podman cp baserow_container_name:/data "$BACKUP_DIR/baserow_backup_$TIMESTAMP"

# Backup Kobold data
podman cp kobold_container_name:/data "$BACKUP_DIR/kobold_backup_$TIMESTAMP"

# Backup Matrix data
podman cp matrix_container_name:/data "$BACKUP_DIR/matrix_backup_$TIMESTAMP"

echo "Backup completed successfully at $TIMESTAMP"