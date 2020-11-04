## Setup Cluster
docker swarm init
# create overlay network
# --> overlay are distributed network across multiple docker hosts. A user-defined network must be defined for services to resolve each other by name.
docker network create --driver overlay backend
## Setup services
docker service create --name db --network backend --env-file .env.db postgres
docker service create --name api --network backend --env-file .env.api -p 3000:3000 rootstrap/rails-base
# run migrations
docker exec $(docker ps -f name=api -n 1 -q) rails db:create db:migrate
## Update services
# scale
docker service scale api=2
# change base image
docker service update --image
# checkout docker service update options