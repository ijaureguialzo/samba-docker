help:
	@echo 'Opciones:'
	@echo ''
	@echo 'start | stop | restart | stop-all'
	@echo 'logs'
	@echo 'stats'
	@echo 'clean'

start:
	@docker-compose up -d --remove-orphans

stop:
	@docker-compose stop

restart: stop start

stop-all:
	@docker stop `docker ps -aq`

logs:
	@docker-compose logs

stats:
	@docker stats

clean:
	@docker-compose down -v
