# create volume
$ docker volume create mongodata

# buat container dg menghubungkan volume yg telah dibuat ke contaner baru ini.
$ docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=sintya --env MONGO_INITDB_ROOT_PASSWORD=sintya mongo:latest

# FYI! port ke sistem mouse tidak boleh sama nanti akan bentrok 27019:27017
