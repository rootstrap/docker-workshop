# scale
docker-compose up -d
docker-compose up -d --scale api=3 --scale web=2
docker-compose up -d --scale api=2 --scale web=1
