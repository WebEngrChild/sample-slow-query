copy_env:
	sh copy_env.sh
init:
	@make build
	@make up
build:
	docker-compose build --no-cache
up:
	docker-compose up -d
exec:
	docker-compose exec sample-mysql bash
mysql:
	docker-compose exec sample-mysql mysql -uroot -ppass
down:
	docker-compose down
stop:
	docker-compose stop