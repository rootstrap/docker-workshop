git clone git@github.com:rootstrap/react-base.git
cp Dockerfile2 react-base/Dockerfile
cp .dockerignore react-base/
cd react-base && docker build -t rootstrap/react-base .