# Deploy from the compose file
docker stack deploy --compose-file docker-compose.yml workshop
# 

# Cleanup
docker stack rm demo
