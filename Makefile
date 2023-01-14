PROJECT := aifund_data_manager
TSTPATH := $(PROJECT)/test
LOG_SRCPATH := ./tmp/$(PROJECT).log

#-----------------------------------------------------------------------------

help:
	@echo "Defined targets:"
	@echo "----------------"
	@echo "help               Usage of the 'make' commands"
	@echo "clear_docker       Remove all docker containers"
	@echo "build_dev_docker   Build docker container and run the project in development mode"
	@echo "run_dev_docker     Run the project in development mode"
	@echo "create_venv        Create virtual environment"
	@echo "activate_venv      Activate already created virtual environment"
	@echo "remove_venv        Remove virtual environment"

#-----------------------------------------------------------------------------

clear_docker:
# It will remove all the containers not only related to that project !
	@docker image prune -f
	@docker system prune -f
	@docker volume prune -f
	@docker network prune -f

build_dev_docker:
	@docker-compose up --build -d

run_dev_docker:
	@docker-compose up -d

create_venv:
	@python3 -m venv .venv
	@source ./venv/bin/activate

activate_venv:
	@source ./venv/bin/activate

remove_venv:
	@deactivate
	@rm -rf .venv

