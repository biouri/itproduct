# itproduct

## Initial setup Docker compose and PostgreSQL

### Features of installation under Windows

Check Hyper-V virtualization support before installing under Windows
systeminfo - works on the command line
msinfo32 - GUI tool

### Install WSL2 before Docker (only for Windows)
https://learn.microsoft.com/en-us/windows/wsl/install

wsl --install
reboot

Check WSL2 installation
wsl -l -v
------------------------------------------------
  NAME                   STATE           VERSION
* Ubuntu                 Running         2

### Docker Installation Process
https://docs.docker.com/desktop/install/mac-install/
https://docs.docker.com/desktop/install/windows-install/

Check Docker Installation
docker --version
docker compose version

### VSCode
https://code.visualstudio.com/

Additional Extensions:
- Dart Code
- Dart Data Class Generator
- Docker
- PostgreSQL (Database manager for MySQL/MariaDB, PostgreSQL, SQLite, Redis and ElasticSearch)
- YAML Language Support by Red Hat
- Thunder Client (Lightweight Rest API Client for VS Code)
- Remote - SSH (or all Remote Extensions)
- Remote Development

### PostgreSQL
https://www.postgresql.org/

### Installing PostgreSQL using Docker compose
Image search example (postgres:16.0-alpine3.18):
https://hub.docker.com/_/postgres/tags?page=1&name=alpine

Create main Docker-Compose file: 
docker-compose.yaml

The image is downloaded once and can then be used repeatedly.
You can use the same image for another application.

Run in Terminal for the first time: 
docker compose up --build

Run in Terminal after build (in the background):
docker compose up -d

