# Deploy from the compose file
docker stack deploy --compose-file docker-stack.yml workshop
# Execute DB migrations against the first API instance
sleep 10 
docker exec -ti workshop_api.1.$(docker service ps -f 'name=workshop_api' workshop_api -q | head -1) rails db:migrate
