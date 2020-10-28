# Launch DB and BE
../session_1/launch.sh
# Launch FE
docker run -d \
    --name base-fe \
    --network local \
    -p 8080:8080 \
    rootstrap/react-base