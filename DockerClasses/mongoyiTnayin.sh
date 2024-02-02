docker run -v /home/v/programing/Lessons2024/DockerClasses/mongo_db:/data/db -d --name my-mogo -e MONGO_INITDB_ROOT_USERNAME=vera -e MONGO_INITDB_ROOT_PASSWORD=password mongo
docker run -it --link my-mogo:mongo -p 8081:8081 --name my_mongo_express --rm -e ME_CONFIG_MONGODB_SERVER=mongo -e ME_CONFIG_MONGODB_ADMINUSERNAME=vera -e ME_CONFIG_MONGODB_ADMINPASSWORD=password mongo-express
# heto localhost:8081, database avelacceluc heto  

docker stop my-mogo

# Check enel or localhosty chi ashxati
docker run -v /home/v/programing/Lessons2024/DockerClasses/mongo_db:/data/db -d --name my-mogo -e MONGO_INITDB_ROOT_USERNAME=vera -e MONGO_INITDB_ROOT_PASSWORD=password mongo

#localhost:8081 um ktesninq or mer sarqac databasenery texn en

