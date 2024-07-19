# Variables
DOCKER_COMPOSE = docker-compose
PROJECT_NAME = symfony_project

# Tâches
.PHONY: up down build restart logs sh php mysql

# Lancer les services en arrière-plan
up:
	$(DOCKER_COMPOSE) up -d

# Arrêter et supprimer les conteneurs
down:
	$(DOCKER_COMPOSE) down

# Construire ou reconstruire les services
build:
	$(DOCKER_COMPOSE) build

# Redémarrer les services
restart:
	$(DOCKER_COMPOSE) restart

# Afficher les logs
logs:
	$(DOCKER_COMPOSE) logs -f

# Ouvrir un shell dans le conteneur app
sh:
	$(DOCKER_COMPOSE) exec app sh

# Exécuter une commande PHP dans le conteneur app
php:
	$(DOCKER_COMPOSE) exec app php $(cmd)

# Ouvrir un shell MySQL dans le conteneur database
mysql:
	$(DOCKER_COMPOSE) exec database mysql -usymfony -psymfony symfony

# Afficher le statut des services
status:
	$(DOCKER_COMPOSE) ps

