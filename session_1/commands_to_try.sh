# replace image_id or container_id accordingly
docker help
docker COMMAND --help
docker system df
docker system events
docker images 
docker images nginx
docker images name:tag
docker images node:10.17  --no-trunc
docker inspect image_id 
docker inspect some-nginx-label | jq '.'
docker inspect some-nginx-label | jq '.[0]'.NetworkSettings
docker rmi image_id 
docker run image
docker ps
docker ps -s
docker ps --filter key=value
docker ps --filter status=running
docker ps --filter ancestor=nginx
docker images --filter "dangling=true"
docker rmi $(docker images -f "dangling=true" -q)
docker run --name some-nginx -d nginx
docker exec -it some-nginx /bin/bash
docker stop container
docker rm --force some-nginx
docker run --rm --name some-nginx
docker run --rm --name some-nginx -v /some/content:/usr/share/nginx/html:ro -d nginx
docker run --rm --name some-nginx -v /tmp/content:/usr/share/nginx/html:ro -p 8080:80 -d nginx
docker logs container_id
docker stop container
docker rm --force some-nginx
docker run --rm --name some-nginx -v /host/path/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx
docker inspect container_id
docker inspect c09d190634bd | jq '.[0]'.NetworkSettings
docker cp some-nginx:/etc/nginx/nginx.conf /host/path/nginx.conf
docker cp /local_path/some_file.txt /var/www/
docker run --name some-ngnix -d some-nginx
volume create
docker volume inspect
docker volume prune
docker volume rm 
docker network ls
docker network create test
docker network connect test some-nginx
docker network rm test
docker volume create test
docker run --rm --name some-nginx-label --label com.example.foo=bar -v test:/usr/share/nginx/html:ro -p 8080:8001 -d nginx