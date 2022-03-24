start_database:
	docker-compose up db
stop_database:
	docker-compose stop db
start_all:
	mkdir -p ~/database/mysql/sourkanjibackend 
	sudo docker-compose up --build

clean:
	docker-compose rm db sourkanjibackend
