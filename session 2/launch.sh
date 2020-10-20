# launch FE
docker run -d \
    --name base-fe \
    --network local \
    -p 8080:3000 \
    rootstrap/react-base
