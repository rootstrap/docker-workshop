# Deletes containers, services and networks
docker stack rm workshop
# Cleanup volumes (this will delete DB data if any)
docker volume prune