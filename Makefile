.PHONY: help
help: ## List of all commands
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# PROJECT TASKS
.PHONY: init
init: ## Initialize wordpress
	@cp .env.dist .env
	@echo '.env file created'
	@docker-compose up -d

# DOCKER TASKS
.PHONY: build
build: ## Build containers
	@docker-compose build wordpress

.PHONY: start
start: ## Start containers
	@docker-compose up -d

.PHONY: stop
stop: ## Stop containers
	@docker-compose stop

.PHONY: bash
bash: ## Start bash command into wordpress container
	@docker-compose exec wordpress bash

.PHONY: status
status: ## Status of containers
	@docker-compose ps

.PHONY: logs
logs: ## Access Logs
	@docker-compose logs -f

