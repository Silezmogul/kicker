#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_DIR="$SCRIPT_DIR/Scripts"

function show_help {
  echo "Kicker - Unified Management Script"
  echo ""
  echo "Usage: ./kicker.sh [command]"
  echo ""
  echo "Commands:"
  echo "  setup     - Initial setup and configuration"
  echo "  start     - Start all services"
  echo "  stop      - Stop all services"
  echo "  restart   - Restart all services"
  echo "  update    - Update the application"
  echo "  status    - Show current status"
  echo "  help      - Show this help message"
  echo ""
}

case "$1" in
  setup)
    echo "Running setup..."
    "$SCRIPTS_DIR/setup.sh"
    ;;
  start)
    echo "Starting services..."
    "$SCRIPTS_DIR/start.sh"
    ;;
  stop)
    echo "Stopping services..."
    "$SCRIPTS_DIR/stop.sh"
    ;;
  restart)
    echo "Restarting services..."
    "$SCRIPTS_DIR/restart.sh"
    ;;
  update)
    echo "Updating application..."
    "$SCRIPTS_DIR/update.sh"
    ;;
  status)
    echo "Checking status..."
    "$SCRIPTS_DIR/status.sh"
    ;;
  help|*)
    show_help
    ;;
esac