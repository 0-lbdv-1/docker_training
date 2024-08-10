docker run \
    --rm \
    -d \
    --name postgres_db \
    --net=db_net \
    -e POSTGRES_USER=lbdv \
    -e POSTGRES_PASSWORD=lbdv \
    -e POSTGRES_DB=lbdv_db \
    postgres:14

docker run \
    --rm \
    -it \
    --name some_back \
    -p 8000:8000 \
    --net=db_net \
    -e PG_HOST=postgres_db \
    -e PG_USER=lbdv \
    -e PG_PASSWORD=lbdv \
    -e PG_DATABASE=lbdv_db \
    kcoursedocker/task-6.4:latest