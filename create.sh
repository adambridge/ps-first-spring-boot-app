docker create --name postgres-demo -e POSTGRES_PASSWORD=Welcome -p 5432:5432 postgres:11.5-alpine
docker start postgres-demo
# docker stop postgres-demo
