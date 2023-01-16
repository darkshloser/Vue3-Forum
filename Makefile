PROJECT := vue3-forum

#-----------------------------------------------------------------------------

help:
	@echo "Defined targets:"
	@echo "----------------"
	@echo "help                    Usage of the 'make' commands"
	@echo "clear_docker            Remove all docker containers"
	@echo "docker_build_detached   Build and run docker container in detached state"
	@echo "docker_build            Build and run docker container"
	@echo "docker_run_detached     Run the container in detached state"
	@echo "docker_run              Run the project within a docker container"
 	@echo "docker_stop             Stop the application"
	@echo "docker_access           Log in to the container"

#-----------------------------------------------------------------------------

clear_docker:
	@-docker stop $(PROJECT)
	@-docker rm $(PROJECT)
	@docker system prune -af

docker_build_detached:
	@docker-compose up --build -d

docker_build:
	@docker-compose up --build

docker_run_detached:
	@docker-compose up -d 

docker_run:
	@docker-compose up

docker_stop:
	@docker stop $(PROJECT)

docker_access:
	@docker exec -it $(PROJECT) bash
