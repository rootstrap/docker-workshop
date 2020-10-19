# Stop and kill instances
docker stop $(docker container ls)
docker rm $(docker container ls -aq) 