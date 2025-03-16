# steamdeck-podman-apps

This project sets up a Podman environment for hosting various applications on a Steam Deck. The applications included in this setup are n8n, Baserow, PostgreSQL, Kobold, and Matrix. Below are the details for each component and instructions for getting started.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Application Configuration](#application-configuration)
- [Scripts](#scripts)
- [License](#license)

## Prerequisites

- Ensure that you have Podman installed on your Steam Deck.
- SSH access to your Steam Deck is enabled.
- Basic knowledge of using the terminal.

## Setup Instructions

1. Clone the repository to your local machine:
   ```
   git clone https://github.com/yourusername/steamdeck-podman-apps.git
   cd steamdeck-podman-apps
   ```

2. Navigate to the `config` directory and create your environment files based on the `.env.example` files provided for n8n and Baserow. Update the necessary variables as per your requirements.

3. Run the setup script to pull the necessary images and create required directories:
   ```
   ./scripts/setup.sh
   ```

4. Start the applications using the start script:
   ```
   ./scripts/start.sh
   ```

## Application Configuration

- **n8n**: Configuration can be done in `config/n8n/.env.example`.
- **Baserow**: Configuration can be done in `config/baserow/.env.example`.
- **PostgreSQL**: Configuration settings are located in `config/postgres/postgresql.conf`.
- **Kobold**: Configuration settings are in `config/kobold/config.json`.
- **Matrix**: Configuration settings are in `config/matrix/homeserver.yaml`.

## Scripts

- `setup.sh`: Automates the setup process for the applications.
- `start.sh`: Starts all the services defined in the `docker-compose.yml` file.
- `backup.sh`: Handles the backup process for databases and application data.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.