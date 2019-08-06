_:
	make init

init:
	if [ ! -e .env ]; then \
		cp -p .env.example .env; \
	fi
	make clean
	mkdir -p mongo/{configdb,db}
	mkdir -p postgres/data
	mkdir -p redis/data
	docker-compose build
	make run

run:
	docker-compose up -d

clean:
	docker-compose down
	rm -rf mongo
	rm -rf postgres
	rm -rf redis
