create-volumes:
	docker volume create --name=lykoi_db

remove-volumes:
	docker rm lykoi_db

docker-compose:
	docker-compose -f docker-compose.yaml up

build:
	export DOCKER_DEFAULT_PLATFORM=linux/amd64 && docker build --tag bandnoticeboard/nottoboard:lykoi-v0.1.1 .

run:
	docker run --add-host=host.docker.internal:host-gateway --env-file ./.env-local bandnoticeboard/nottoboard:lykoi-v0.1.1

push:
	docker push bandnoticeboard/nottoboard:lykoi-v0.1.1

go_run_api:
	go run api.go