# Clone repo and move Dockerfile with buildtime compilation + dockerignore
git clone git@github.com:rootstrap/react-base.git
cp Dockerfile_2 react-base/Dockerfile
cp .dockerignore react-base/
# Build using environment vars as build arguments
cd react-base && docker build \
    --build-arg API_URL=http://localhost:3000/api/v1 \
    --build-arg PORT=8080 \
    -t rootstrap/react-base .