# create internal network
docker network create local
# launch DB
docker run -d \
    --name base-db \
    -e POSTGRES_USER=apibase \
    -e POSTGRES_PASSWORD=mysecretpassword \
    -v /tmp/data:/var/lib/postgresql/data \
    --network local \
     postgres
# launch API server
docker run -d \
   --name base-api \
   -e DATABASE_URL=postgres://apibase:mysecretpassword@base-db/apibase \
   -e SERVER_URL=localhost:3000 \
   -e PASSWORD_RESET_URL=http://127.0.0.1:3000 \
   -p 3000:3000 \
   --network local \
    rootstrap/rails-base
# Run migrations 
docker exec base-api rails db:create db:migrate 
# Create test admin user
docker exec base-api rails db:seed