### RUNTIME COMPILATION
# Build
docker build -t rootstrap/react-base .
# Launch
docker run -d \
    --name base-fe \
    --network local \
    -e API_URL=http://localhost:3000/api/v1 \
    -e PORT=8080 \
    -p 8080:8080 \
    rootstrap/react-base


### BUILDTIME COMPILATION
# Build
docker build \
    --build-arg API_URL=http://localhost:3000/api/v1 \
    --build-arg PORT=8080 \
    -t rootstrap/react-base .
# Launch
docker run -d \
    --name base-fe \
    --network local \
    -p 8080:8080 \
    rootstrap/react-base