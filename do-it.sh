sudo docker create --name postgres-demo -e POSTGRES_PASSWORD=Welcome -p 5432:5432 postgres:11.5-alpine

sudo docker start postgres-demo

# docker stop postgres-demo

# Connection Info:
#    JDBC URL: `jdbc:postgresql://localhost:5432/conference_app`
#    Username: `postgres`
#    Password: `Welcome`


# Connect to PSQL prompt from docker:  
# sudo docker exec -it postgres-demo psql -U postgres

#    psql> create database conference_app;


sudo docker cp ./database/postgresql/create_tables.sql postgres-demo:/create_tables.sql
sudo docker exec -it postgres-demo psql -d conference_app -f create_tables.sql -U postgres

sudo docker cp ./database/postgresql/insert_data.sql postgres-demo:/insert_data.sql
sudo docker exec -it postgres-demo psql -d conference_app -f insert_data.sql -U postgres
