.DEFAULT_GOAL := help

.PHONY: help install serve dev docker-build docker-run pre-commit pre-commit-install check clean

help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies using pnpm in src/
	pnpm --dir src install

serve: ## Start local preview server using pnpm in src/
	pnpm --dir src dev

dev: ## Start local development server
	pnpm --dir src dev

docker-build: ## Build the Nginx Docker image
	docker build -t cloudrader-ui .

docker-run: ## Run the website via Docker on http://localhost:3000
	docker run --rm -p 3000:3000 cloudrader-ui

pre-commit: ## Run all pre-commit hooks
	pre-commit run --all-files

pre-commit-install: ## Install pre-commit as a Git hook
	pre-commit install

check: ## Run all checks
	@make pre-commit

clean: ## Remove temporary files and node_modules
	rm -rf .DS_Store src/node_modules
