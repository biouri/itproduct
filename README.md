# itproduct

## Initial setup Docker compose and PostgreSQL

### Features of installation under Windows

Check Hyper-V virtualization support before installing under Windows
systeminfo - works on the command line
msinfo32 - GUI tool

### Install WSL2 before Docker (only for Windows)
https://learn.microsoft.com/en-us/windows/wsl/install

```bash
wsl --install
reboot
```

Check WSL2 installation
```bash
wsl -l -v
```
|   :----: | :----:  | ---     |
|   NAME   | STATE   | VERSION |
| * Ubuntu | Running | 2       |

### Docker Installation Process
https://docs.docker.com/desktop/install/mac-install/
https://docs.docker.com/desktop/install/windows-install/

Check Docker Installation
```bash
docker --version
docker compose version
```

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
```bash
docker compose up --build
```

Run in Terminal after build (in the background):
```bash
docker compose up -d
```

## Installing Flutter, Dart SDK, Conduit for writing a backend

Windows - The package manager pre-install
https://chocolatey.org/install

Mac - Pre-install Homebrew
https://brew.sh/

### Dart Install
https://dart.dev/get-dart

The Dart SDK installation (Windows example):
```bash
choco install dart-sdk
```

To upgrade the Dart SDK (Windows example):
```bash
choco upgrade dart-sdk
```

### Flutter Install
https://docs.flutter.dev/get-started/install

Check Dart & Flutter Version
```bash
dart --version
flutter --version
where flutter dart
```

### Framework Conduit Install
https://www.theconduit.dev/

Get Started
https://www.theconduit.dev/start/

```bash
dart pub global activate conduit
conduit --version
```
Conduit CLI version: 4.4.0

### Create a new Dart project.
https://dart.dev/tutorials/server/get-started#3-create-a-small-app

```bash
dart create -t console auth
```

Set Application entry point
lib\main.dart

Add dependencies to: 
auth\pubspec.yaml
```yaml
...
dependencies:
  conduit: ^4.4.0
  conduit_core: ^4.4.0
  conduit_postgresql: ^4.4.0
```

From:
https://pub.dev/packages/conduit/install
https://pub.dev/packages/conduit_core/install
https://pub.dev/packages/conduit_postgresql/install

### Getting packages
```bash
cd .\auth\
dart pub get
```

## Creating a migration file + Validation + Making changes to the DB
```bash
conduit db generate
conduit db validate
conduit db upgrade
```
