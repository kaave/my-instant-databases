_:
	make init

init:
	make clean
	mkdir -p mongo/{configdb,db}
	docker-compose build
	make run

run:
	docker-compose up -d

clean:
	docker-compose down
	rm -rf mongo
