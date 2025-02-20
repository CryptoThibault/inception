nginx:
	cd srcs/nginx
	./tools/generate.sh
	docker build -t nginx .
	docker run -d --name nginx -p 443:443 nginx
#TEST curl -k https://localhost

wordpress:
	cd srcs/wordpress
	./tools/generate.sh
	docker build -t wordpress .
	docker run -d --name wordpress -p 9000:9000 wordpress
#TEST docker exec -it wordpress sh
#TEST php-fpm -t

mariadb:
	cd srcs/wordpress
	./tools/generate.sh
	docker build -t mariadb .
	docker run -d --name mariadb -p 3306:3306 \
	-e MARIADB_ROOT_PASSWORD=rootpassword mariadb
