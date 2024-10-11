#1 Buat volume baru untuk lokasi restore data backup
$ docker volume create mongorestore
#2 Lakukan restore
$ docker container run --rm --name ubunturestore --mount "type=bind,source=/home/shintya/Learning/Docker/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-lagi-021024.tar.gz --strip 1"

## Testing
$ docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=sintya --env MONGO_INITDB_ROOT_PASSWORD=sintya mongo:latest

$ docker container start mongorestore