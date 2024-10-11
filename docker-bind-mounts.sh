$ docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/home/shintya/Learning/Docker/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=abc --env MONGO_INITDB_ROOT_PASSWORD=abc mongo:latest

# FYI! port ke sistem mouse tidak boleh sama nanti akan bentrok 27018:27017
