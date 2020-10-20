# Stop and kill instances
docker stop $(docker container ls -aq)
docker rm $(docker container ls -aq) 