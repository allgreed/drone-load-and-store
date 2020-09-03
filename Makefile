.DEFAULT_GOAL := help

# Porcelain
# ###############
.PHONY: env-up env-down env-recreate container run e2e init clean

run: setup ## run the app
	@echo "Not implemented"; false

env-up: ## set up dev environment
	@echo "Not implemented"; false

env-down: ## tear down dev environment
	@echo "Not implemented"; false

env-recreate: env-down env-up ## deconstruct current env and create another one

todo: ## list all TODOs in the project
	git grep -I --line-number TODO | grep -v 'list all TODOs in the project' | grep TODO

test: setup ## run all tests
	@echo "Not implemented"; false

container: ## create container
	docker build -t drone-load-and-store .

init: ## one time setup
	direnv allow .

clean: ## remove artifacts
	@# will remove everything in .gitignore expect for blocks starting with dep* or lib* comment
	@# TODO: add actual removal xD
	diff --new-line-format="" --unchanged-line-format="" <(grep -v '^#' testowy | grep '\S' | sort) <(awk '/^# *(dep|lib)/,/^$/' testowy | head -n -1 | tail -n +2 | sort) 


# Utilities
# ###############
.PHONY: help
help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
