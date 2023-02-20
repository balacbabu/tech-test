#! /bin/bash

# npm run start

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q) --force

# export NODE_ENV=development
# export PORT=4000
# export API_VERSION=1.0
# export JWT_SECRET=helloworld
# export DB_PG_DB=postgres
# export DB_PG_PORT=5432
# export DB_PG_HOST=postgres
# export DB_PG_USER=postgres
# export DB_PG_PASSWD=password
# export DB_PG_SSL=false
