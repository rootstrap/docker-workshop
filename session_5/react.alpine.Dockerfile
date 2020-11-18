FROM node:12.18.2-alpine

ARG API_URL=http://localhost:3000/api/v1
ARG PORT=8080

COPY . . 

RUN npm install

RUN npm run clean-ssr
RUN npm run build:client
RUN npm run build:server

ENTRYPOINT ["npm", "run", "start:server"]
