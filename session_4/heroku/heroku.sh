heroku container:login
heroku create docker-workshop-seba
docker tag rootstrap/rails-base:latest registry.heroku.com/docker-workshop-seba/api
docker push registry.heroku.com/docker-workshop-seba/api
docker tag rootstrap/react-base:latest registry.heroku.com/docker-workshop-seba/web
docker push registry.heroku.com/docker-workshop-seba/web
heroku container:release web api