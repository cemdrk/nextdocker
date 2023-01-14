.PHONY: down up build shell logs

down:
	docker-compose down --remove-orphans -v --rmi local

build:
	docker-compose build --no-cache

up: down build
	docker-compose up -d && make logs

shell:
	docker-compose exec app bash

logs:
	docker-compose logs -f app
