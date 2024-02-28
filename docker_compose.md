<!-- MEMBERHENTIKAN SEMUA CONTAINER -->
docker stop $(docker ps -aq)
<!-- MENGHAPUS SEMUA CONTAINER -->
docker container prune
<!-- MENGHAPUS SEMUA IMAGE -->
docker image prune -a
<!-- MENGHAPUS SEMUA NETWORK -->
docker network prune
<!-- MENJALANKAN DOCKER COMPOSER SEKALIGUS -->
docker compose up -d
<!-- REMOVE MEMBERHENTIKAN COMPOSE dan YANG BERJALAN -->
docker compose down
<!-- MENGARAHKAN KE FILE COMPOSE LAIN -->
docker compose default name file : docker-compose.yml
JIKA MENGARAHKAN KE LAIN
docker compose -f docker-compose-lain.yml up -d
<!-- MEMBERHENTIKAN COMPOSE LAIN -->
docker compose -f docker-compose-lain.yml down