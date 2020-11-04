# Deploy from the compose file
docker stack deploy --compose-file docker-compose.yml workshop
# Execute DB migrations against the first API instance
docker exec -ti workshop_api.1.$(docker service ps -f 'name=workshop_api.1' workshop_api -q) rails db:migrate
# Cleanup
docker stack rm demo
