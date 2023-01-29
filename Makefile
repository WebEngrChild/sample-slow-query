init:
	@make build
	@make up
build:
	docker-compose build --no-cache
up:
	docker-compose up -d
mysql:
	docker-compose exec mysql mysql -uroot -ppass
down:
	docker-compose down
stop:
	docker-compose stop