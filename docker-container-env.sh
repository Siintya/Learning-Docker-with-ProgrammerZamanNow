$ docker image pull mongo:latest

$ docker container create --name contohmongo01 --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=abc --env MONGO_INITDB_ROOT_PASSWORD=abc mongo:latest