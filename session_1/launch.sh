# create internal network
docker network create local
# launch DB
docker run -d \
    --name base-db \
    -e POSTGRES_USER=apibase \
    -e POSTGRES_PASSWORD=mysecretpassword \
    -v /tmp/data:/var/lib/postgresql/data \
    -p 5432:5432 \
    --network local \
     postgres
# launch API server
docker run -d \
    --name base-api \
    -e DATABASE_URL=postgres://apibase:mysecretpassword@base-db/apibase \
    -e SERVER_HOST=base-api \
    -e PASSWORD_RESET_URL=http://base-api:3000 \
    -p 3000:3000 \
    --network local \
    rootstrap/rails-base
# Run migrations 
docker exec base-api rails db:create db:migrate 
# compile assets
docker exec base-api rails assets:precompile 
# Create test admin user
docker exec base-api rails db:seed