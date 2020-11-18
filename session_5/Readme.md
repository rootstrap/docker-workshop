# Session 5 materials

## Alpine example

* checkout Rails API base
* copy rails.alpine.Dockerfile to the root folder
```
cp rails.alpine.Dockerfile rails_api_base
```
* checkout React base
* copy react.alpine.Dockerfile to the root folder
```
cp react.alpine.Dockerfile react-base
```
* build both images with docker-compose
```
docker-compose build
```
* compare image sizes
```
docker images --filter=reference='rootstrap'
```
* validate images are functional
```
docker-compose up
```


## Multi Stage example

* checkout multi stage example repo
```
git clone git@github.com:CodepediaOrg/multi-stage-react-app-example.git
```
* build image with docker
```
cd multi-stage-react-app-example && docker build -t react-example .
```
* check image sizes
```
docker images --filter=reference='react-example'
```

## Multi Stage assignment

* use Cypress as base image
* use Yarn instead of NPM for installing dependencies and building
