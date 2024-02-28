<!-- INSTALL MYSQL CONTAINER -->
docker run --name mysql -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_ROOT_HOST=% -e MYSQL_DATABASE=coba -v C:/Users/'IT PIAT7'/belajar-docker/mysql_data:/var/lib/mysql -d mysql

<!-- PHPMYADMIN -->
connect ke ip mysql di PMA_HOST
bisa gunakan ip atau nama container
docker run --name phpmyadmin2 -d -e PMA_HOST=mysql -p 8082:80 phpmyadmin

<!-- DOCKER NETWORK -->
docker network create network1 
docker network ls
docker network connect network1 mysql

<!-- MELIHAT IP NETWORK -->
docker inspect --type=container mysql/phpmyadmin
default mysql : 172.17.0.2
ip mysql : 172.18.0.2

default phpmyadmin : 172.17.0.3
ip phpmyadmin : 172.18.0.2
Menyamakan IP dengan mysql dan phpmyadmin connectkan
docker network connect network1 phpmyadmin