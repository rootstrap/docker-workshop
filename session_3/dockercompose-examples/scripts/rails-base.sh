docker run --rm -p 3000:3000 \
--name api-rails-base \
--network rails \
-e DB_NAME=rails-base \
-e DB_USER=rails-base \
-e DB_PORT=5432 \
-e DB_HOST=host \
-e DB_NAME=dbname \
-d api-rails-base:latest

