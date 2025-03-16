# steamdeck-podman-apps

This project sets up a Podman environment for hosting various containers needed to host kicker sidekick on a SteamOS device. The applications included in this setup are n8n, Baserow, PostgreSQL, Kobold, and Matrix. Below are the details for each component and instructions for getting started.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Steam OS Installation](#setup-instructions)
- [Application Configuration](#application-configuration)
- [Scripts](#scripts)
- [License](#license)

## Prerequisites

- Ensure that you have Podman installed on your Steam Deck.
- SSH access to your Steam Deck is enabled.
- Basic knowledge of using the terminal.

## Steam OS Installation (Steam Deck and other Steam OS devices)

To install and run Kicker on Steam OS devices:

1. **SSH into your Steam OS device**:
   ```bash
   ssh user@your-steamos-device-ip-or-localhost-ip
   ```
   Replace `user` with your username (typically `deck` on Steam Deck)

2. **Clone this repository**:
   ```bash
   cd ~
   git clone https://github.com/Silezmogul/kicker.git
   cd kicker
   ```

3. **Run the management script**:
   ```bash
   ./kicker.sh help
   ```

### Available Commands

Kicker uses a unified management script:

To manage the application, use the following command in the terminal:

```bash
./kicker.sh [command]
```

Replace `[command]` with one of the available commands listed below:
- `setup` - Initial setup and configuration
- `start` - Start all services
- `stop` - Stop all services
- `restart` - Restart all services
- `update` - Update the application
- `status` - Show current status
- `help` - Show this help message
```

## Scripts

## Scripts Overview

The `Scripts/` directory contains the following implementation scripts:

- **setup.sh**: Performs initial installation and configuration of dependencies
- **start.sh**: Starts all Kicker services and components
- **stop.sh**: Stops all running Kicker services and components
- **restart.sh**: Restarts all Kicker services for configuration changes
- **update.sh**: Updates Kicker to the latest version and updates dependencies
- **status.sh**: Displays the current status of all Kicker services

Alternatively, each script can be run directly (`./Scripts/script_name.sh`).

## Application Configuration

- **n8n**: Configuration can be done in `config/n8n/.env.example`.
- **Baserow**: Configuration can be done in `config/baserow/.env.example`.
- **PostgreSQL**: Configuration settings are located in `config/postgres/postgresql.conf`.
- **Kobold**: Configuration settings are in `config/kobold/config.json`.
- **Matrix**: Configuration settings are in `config/matrix/homeserver.yaml`.


## Licensing Information

This project is currently proprietary and not available for redistribution or modification without explicit permission from the author. All rights reserved.

A formal license will be determined at a later date. Until then, this software is provided for evaluation purposes only to authorized individuals.

© 2025 Silezmogul

