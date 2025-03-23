🐳 Francinette Docker Environment

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=n](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logimg.shields.io/badge/python-3670A0?style=for-the-badge&log Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=whiteains a Docker setup for a development environment with Francinette, Norminette, and other useful tools for 42 School projects.
📁 Repository Contents

    Dockerfile: Defines the Docker image with all necessary tools and configurations.

    install.sh: Script to build the Docker image.

    run.sh: Script to run the Docker container with volume mounting.

🛠️ Features

    Debian-based environment

    Pre-installed development tools (git, vim, gcc, clang, etc.)

    Norminette for code style checking

    Francinette for project testing

    Oh My Zsh for an enhanced shell experience

🚀 Getting Started
Prerequisites

    Docker installed on your system

Installation

    Clone this repository:

text
git clone <repository-url>
cd <repository-directory>

Run the installation script:

    text
    ./install.sh

Usage

Run the container using the provided script:

text
./run.sh

You will be prompted to enter the path to your project directory, which will be mounted in the container.
🐚 Accessing the Environment

Once the container is running, you'll be dropped into a Zsh shell where you can start working on your projects.
🔧 Customization

Feel free to modify the Dockerfile to add or remove tools as needed for your development environment.
📜 License

This project is open source and available under the MIT License.

# 🐳 Environnement Docker Francinette

Docker
Debian
Python
Shell Script

Ce dépôt contient une configuration Docker pour un environnement de développement avec Francinette, Norminette et d'autres outils utiles pour les projets de l'école 42.

## 📁 Contenu du Dépôt

- `Dockerfile`: Définit l'image Docker avec tous les outils et configurations nécessaires.
- `install.sh`: Script pour construire l'image Docker.
- `run.sh`: Script pour exécuter le conteneur Docker avec le montage de volume.

## 🛠️ Fonctionnalités

- Environnement basé sur Debian
- Outils de développement pré-installés (git, vim, gcc, clang, etc.)
- Norminette pour la vérification du style de code
- Francinette pour les tests de projet
- Oh My Zsh pour une expérience de shell améliorée

## 🚀 Démarrage Rapide

### Prérequis

- Docker installé sur votre système

### Installation

1. Clonez ce dépôt :
   ```
   git clone 
   cd 
   ```

2. Exécutez le script d'installation :
   ```
   ./install.sh
   ```

### Utilisation

Exécutez le conteneur en utilisant le script fourni :
```
./run.sh
```

Il vous sera demandé de saisir le chemin d'accès à votre répertoire de projet, qui sera monté dans le conteneur.

## 🐚 Accès à l'Environnement

Une fois le conteneur en cours d'exécution, vous serez placé dans un shell Zsh où vous pourrez commencer à travailler sur vos projets.

## 🔧 Personnalisation

N'hésitez pas à modifier le `Dockerfile` pour ajouter ou supprimer des outils selon vos besoins pour votre environnement de développement.

## 📜 Licence

Ce projet est open source et disponible sous la [Licence MIT](LICENSE).
