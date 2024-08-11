docker network create app
docker run --rm -d \
    -v POSTGRES_USER=postgres \
    -v POSTGRES_PASSWORD=postgres \
    -v POSTGRES_DB=postgres \
    --net=app \
    -name db \
    postgres

docker run --rm -d 
    --name postgres_db \
    --net=db_net \
    -e POSTGRES_USER= \
    -e POSTGRES_PASSWORD= \
    -e POSTGRES_DB= postgres:14

docker run --rm -d \
    --name backend \
    --net=db_net \
    -e PG_HOST=postgres_db \
    -e PG_USER= \
    -e PG_PASSWORD= \
    -e PG_DATABASE= \
    kcoursedocker/task-7.4-back

docker run --rm -d \
    --name frontend \
    --net=db_net \
    -p 80:80 \
    kcoursedocker/task-7.4-front