# check example base image
docker images --filter=reference='react-example'
# build React base with Alpine
cd multi-stage-react-app-example && docker build -f multi.Dockerfile -t react-example:multi .
# check images again
docker images --filter=reference='react-example'