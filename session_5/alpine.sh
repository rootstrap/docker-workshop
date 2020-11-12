# check rootstrap images
docker images --filter=reference='rootstrap/*'
# build React and Rails bases with Alpine
docker-compose build
# check images again
docker images --filter=reference='rootstrap/*'
