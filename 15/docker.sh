docker network create app
docker run --rm -d \
    -v POSTGRES_USER=postgres \
    -v POSTGRES_PASSWORD=postgres \
    -v POSTGRES_DB=postgres \
    --net=app \
    -name db \
    postgres
