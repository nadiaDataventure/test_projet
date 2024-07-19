
# README
## Introduction
Ce fichier `Makefile` est conçu pour faciliter la gestion des conteneurs Docker d'un projet Symfony. En utilisant des commandes Make, vous pouvez démarrer, arrêter, reconstruire et gérer facilement vos services Docker.
## Prérequis
- Docker
- Docker Compose
- Make (GNU Make)
## Variables
- `DOCKER_COMPOSE` : commande Docker Compose, par défaut `docker-compose`.
- `PROJECT_NAME` : nom du projet, par défaut `symfony_project`.
## Tâches
Les tâches suivantes sont disponibles dans ce Makefile :
### `up`
Lance les services en arrière-plan.
```sh
make up
```
### `down`
Arrête et supprime les conteneurs.
```sh
make down
```
### `build`
Construit ou reconstruit les services.
```sh
make build
```
### `restart`
Redémarre les services.
```sh
make restart
```
### `logs`
Affiche les logs des services en temps réel.
```sh
make logs
```
### `sh`
Ouvre un shell dans le conteneur `app`.
```sh
make sh
```
### `php`
Exécute une commande PHP dans le conteneur `app`. Utilisez la variable `cmd` pour spécifier la commande à exécuter.
```sh
make php cmd="your-php-command"
```
### `mysql`
Ouvre un shell MySQL dans le conteneur `database`.
```sh
make mysql
```
### `status`
Affiche le statut des services.
```sh
make status
```
## Utilisation
1. Assurez-vous que Docker et Docker Compose sont installés sur votre machine.
2. Placez le fichier `Makefile` à la racine de votre projet Symfony.
3. Utilisez les commandes `make` décrites ci-dessus pour gérer vos conteneurs Docker.
## Exemple de commandes
- Pour démarrer les services en arrière-plan :
  ```sh
  make up
  ```
- Pour reconstruire les services après avoir apporté des modifications au `Dockerfile` ou à `docker-compose.yml` :
  ```sh
  make build
  ```
- Pour exécuter une commande Symfony CLI dans le conteneur `app` :
  ```sh
  make php cmd="bin/console cache:clear"
  ```
## Conclusion
Ce Makefile simplifie la gestion des conteneurs Docker pour un projet Symfony en regroupant les commandes courantes dans des tâches Make. Vous pouvez personnaliser et étendre ce fichier en fonction des besoins spécifiques de votre projet.
